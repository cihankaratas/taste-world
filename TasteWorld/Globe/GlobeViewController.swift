import UIKit
import SceneKit

// MARK: - Globe View Controller (UIKit)
class GlobeViewController: UIViewController {
    
    var sceneView: SCNView!
    var globeScene: GlobeScene!
    
    var onCountrySelected: ((Country) -> Void)?
    
    // Rotation state
    private var lastPanTranslation: CGPoint = .zero
    private var rotationVelocity: CGPoint = .zero
    private var inertiaTimer: CADisplayLink?
    private var isDragging = false
    
    // Zoom state
    private var cameraNode: SCNNode!
    private var initialCameraZ: Float = 2.8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        setupGestures()
    }
    
    private func setupScene() {
        sceneView = SCNView(frame: view.bounds)
        sceneView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        sceneView.backgroundColor = UIColor.clear
        sceneView.antialiasingMode = .multisampling4X
        sceneView.rendersContinuously = false
        view.addSubview(sceneView)
        
        let camera = SCNCamera()
        camera.zFar = 100
        camera.zNear = 0.1
        camera.fieldOfView = 50
        
        cameraNode = SCNNode()
        cameraNode.camera = camera
        cameraNode.position = SCNVector3(0, 0, 2.8)
        
        globeScene = GlobeScene(countries: allCountries)
        globeScene.rootNode.addChildNode(cameraNode)
        
        let cameraControl = SCNNode()
        cameraControl.position = SCNVector3(0, 0, 0)
        globeScene.rootNode.addChildNode(cameraControl)
        
        sceneView.scene = globeScene
        sceneView.pointOfView = cameraNode
        sceneView.isJitteringEnabled = true
    }
    
    private func setupGestures() {
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        pan.delegate = self
        sceneView.addGestureRecognizer(pan)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        sceneView.addGestureRecognizer(tap)
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
        pinch.delegate = self
        sceneView.addGestureRecognizer(pinch)
        
        let rotation = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(_:)))
        rotation.delegate = self
        sceneView.addGestureRecognizer(rotation)
        
        pan.require(toFail: tap)
    }
    
    @objc private func handlePinch(_ gesture: UIPinchGestureRecognizer) {
        switch gesture.state {
        case .began:
            initialCameraZ = cameraNode.position.z
        case .changed:
            let newZ = initialCameraZ / Float(gesture.scale)
            cameraNode.position.z = max(1.5, min(6.0, newZ))
            sceneView.setNeedsDisplay()
        default:
            break
        }
    }
    
    @objc private func handleRotation(_ gesture: UIRotationGestureRecognizer) {
        if gesture.state == .changed {
            let angle = Float(gesture.rotation)
            let earth = globeScene.earthNode!
            // Rotate around Z-axis (the axis pointing at the camera)
            let qZ = simd_quatf(angle: -angle, axis: simd_float3(0, 0, 1))
            earth.simdOrientation = simd_normalize(qZ * earth.simdOrientation)
            gesture.rotation = 0 // Reset so we get delta each time
        }
    }
    
    @objc private func handlePan(_ gesture: UIPanGestureRecognizer) {
        let location = gesture.location(in: sceneView)
        let translation = gesture.translation(in: sceneView)
        let velocity = gesture.velocity(in: sceneView)
        
        switch gesture.state {
        case .began:
            isDragging = true
            inertiaTimer?.invalidate()
            lastPanTranslation = translation
            
        case .changed:
            let deltaX = Float(translation.x - lastPanTranslation.x)
            let deltaY = Float(translation.y - lastPanTranslation.y)
            lastPanTranslation = translation
            
            // Drag right → globe spins right, drag up → globe spins up
            let sensitivity: Float = 0.005
            applyRotation(panX: deltaX * sensitivity, panY: deltaY * sensitivity)
            
        case .ended, .cancelled:
            isDragging = false
            rotationVelocity = CGPoint(x: velocity.x * 0.0002, y: velocity.y * 0.0002)
            startInertia()
            
        default:
            break
        }
        _ = location
    }
    
    /// Quaternion-based rotation — behaves like spinning a physical ball.
    /// panX: horizontal drag amount (positive = drag right)
    /// panY: vertical drag amount (positive = drag down)
    private func applyRotation(panX: Float, panY: Float) {
        let earth = globeScene.earthNode!
        
        // Rotate around WORLD Y-axis for horizontal drag
        let qY = simd_quatf(angle: panX, axis: simd_float3(0, 1, 0))
        // Rotate around WORLD X-axis for vertical drag
        let qX = simd_quatf(angle: panY, axis: simd_float3(1, 0, 0))
        
        // Apply world-space rotations BEFORE the current orientation
        earth.simdOrientation = simd_normalize(qX * qY * earth.simdOrientation)
    }
    
    private func startInertia() {
        inertiaTimer?.invalidate()
        let link = CADisplayLink(target: self, selector: #selector(applyInertia))
        link.add(to: .main, forMode: .common)
        inertiaTimer = link
    }
    
    @objc private func applyInertia() {
        guard !isDragging else {
            inertiaTimer?.invalidate()
            return
        }
        
        let friction: Double = 0.92
        rotationVelocity.x *= friction
        rotationVelocity.y *= friction
        
        if abs(rotationVelocity.x) < 0.00001 && abs(rotationVelocity.y) < 0.00001 {
            inertiaTimer?.invalidate()
            return
        }
        
        // Same quaternion approach for inertia
        let panX = Float(rotationVelocity.x) * 0.3
        let panY = Float(rotationVelocity.y) * 0.3
        applyRotation(panX: panX, panY: panY)
    }
    
    @objc private func handleTap(_ gesture: UITapGestureRecognizer) {
        let location = gesture.location(in: sceneView)
        let hits = sceneView.hitTest(location, options: [
            SCNHitTestOption.searchMode: SCNHitTestSearchMode.all.rawValue
        ])
        for hit in hits {
            var node: SCNNode? = hit.node
            while node != nil {
                if let name = node?.name, name == "global_overlay" {
                    let uv = hit.textureCoordinates(withMappingChannel: 0)
                    let lon = Double(uv.x) * 360.0 - 180.0
                    let lat = 90.0 - Double(uv.y) * 180.0 // Correctly maps top (v=0) to North (+90)
                    
                    if let country = findCountry(atLat: lat, lon: lon) {
                        onCountrySelected?(country)
                        return
                    }
                }
                node = node?.parent
            }
        }
    }
    
    private func findCountry(atLat lat: Double, lon: Double) -> Country? {
        // Simple bounding box checks or raycast to find the clicked country.
        for boundary in allCountryBoundaries {
            for poly in boundary.polygons {
                if isPointInPolygon(lat: lat, lon: lon, polygon: poly) {
                    return allCountries.first(where: { $0.id == boundary.countryId })
                }
            }
        }
        return nil
    }
    
    private func isPointInPolygon(lat: Double, lon: Double, polygon: [(lat: Double, lon: Double)]) -> Bool {
        var isInside = false
        var j = polygon.count - 1
        for i in 0..<polygon.count {
            let pi = polygon[i]
            let pj = polygon[j]
            // Ignore antimeridian wrap-around segments connecting -180 and +180
            if abs(pi.lon - pj.lon) < 180.0 {
                if (pi.lat < lat && pj.lat >= lat || pj.lat < lat && pi.lat >= lat) {
                    if (pi.lon + (lat - pi.lat) / (pj.lat - pi.lat) * (pj.lon - pi.lon) < lon) {
                        isInside = !isInside
                    }
                }
            }
            j = i
        }
        return isInside
    }
}

// Allow pan + pinch + rotation to work at the same time
extension GlobeViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,
                           shouldRecognizeSimultaneouslyWith other: UIGestureRecognizer) -> Bool {
        let twoFingerGestures: [UIGestureRecognizer.Type] = [
            UIPanGestureRecognizer.self,
            UIPinchGestureRecognizer.self,
            UIRotationGestureRecognizer.self
        ]
        let isFirst = twoFingerGestures.contains(where: { type(of: gestureRecognizer) == $0 })
        let isSecond = twoFingerGestures.contains(where: { type(of: other) == $0 })
        return isFirst && isSecond
    }
}
