import SwiftUI
import SceneKit

// MARK: - Globe Scene
class GlobeScene: SCNScene {
    var earthNode: SCNNode!
    var atmosphereNode: SCNNode!
    init(countries: [Country]) {
        super.init()
        setupLighting()
        setupEarth()
        setupAtmosphere()
        addCountryOverlays(countries: countries)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) not implemented") }
    
    private func setupLighting() {
        let ambient = SCNLight()
        ambient.type = .ambient
        ambient.intensity = 300
        ambient.color = UIColor(white: 0.3, alpha: 1)
        
        let amNode = SCNNode()
        amNode.light = ambient
        rootNode.addChildNode(amNode)
        
        // Main sunlight
        let directional = SCNLight()
        directional.type = .directional
        directional.intensity = 1800
        directional.color = UIColor(red: 1.0, green: 0.95, blue: 0.8, alpha: 1)
        directional.castsShadow = false
        
        let sunNode = SCNNode()
        sunNode.light = directional
        sunNode.position = SCNVector3(5, 3, 5)
        sunNode.eulerAngles = SCNVector3(-0.5, 0.8, 0)
        rootNode.addChildNode(sunNode)
        
        // Rim light (blue, space-like)
        let rim = SCNLight()
        rim.type = .directional
        rim.intensity = 400
        rim.color = UIColor(red: 0.3, green: 0.5, blue: 1.0, alpha: 1)
        
        let rimNode = SCNNode()
        rimNode.light = rim
        rimNode.eulerAngles = SCNVector3(0, Float.pi, 0)
        rootNode.addChildNode(rimNode)
    }
    
    private func setupEarth() {
        let sphere = SCNSphere(radius: 1.0)
        sphere.segmentCount = 96
        
        let material = SCNMaterial()
        // Minimalist solid color for oceans (Hex: #273856)
        material.diffuse.contents = UIColor(red: 0.153, green: 0.220, blue: 0.337, alpha: 1.0)
        material.specular.contents = UIColor(white: 0.3, alpha: 1)
        material.shininess = 60
        
        sphere.materials = [material]
        earthNode = SCNNode(geometry: sphere)
        earthNode.name = "earth"
        
        // Tilt like real Earth
        earthNode.eulerAngles.z = Float(-23.5 * .pi / 180)
        
        rootNode.addChildNode(earthNode)
    }
    
    private func setupAtmosphere() {
        let atmoSphere = SCNSphere(radius: 1.025)
        atmoSphere.segmentCount = 64
        
        let atmoMat = SCNMaterial()
        atmoMat.diffuse.contents = UIColor.clear
        atmoMat.emission.contents = UIColor(red: 0.3, green: 0.6, blue: 1.0, alpha: 0.08)
        atmoMat.isDoubleSided = true
        atmoMat.transparencyMode = .rgbZero
        atmoMat.writesToDepthBuffer = false
        
        atmoSphere.materials = [atmoMat]
        atmosphereNode = SCNNode(geometry: atmoSphere)
        atmosphereNode.name = "atmosphere"
        rootNode.addChildNode(atmosphereNode)
    }
    
    private func addCountryOverlays(countries: [Country]) {
        let texture = GlobalOverlayGenerator.generateFlagTexture(countries: countries, boundaries: allCountryBoundaries)
        
        let sphere = SCNSphere(radius: 1.005)
        sphere.segmentCount = 96
        
        let material = SCNMaterial()
        material.diffuse.contents = texture
        material.isDoubleSided = true
        material.transparency = 0.85
        material.writesToDepthBuffer = false
        material.readsFromDepthBuffer = true
        
        sphere.materials = [material]
        let overlayNode = SCNNode(geometry: sphere)
        overlayNode.name = "global_overlay"
        earthNode.addChildNode(overlayNode)
    }
    
    // Pin functionality removed.
    
    // Convert lat/lon to 3D position on sphere (radius ~1.0)
    static func positionOn(sphere radius: Float, lat: Double, lon: Double) -> SCNVector3 {
        let latRad = Float(lat * .pi / 180)
        let lonRad = Float(lon * .pi / 180)
        let x = radius * cos(latRad) * sin(lonRad)
        let y = radius * sin(latRad)
        let z = radius * cos(latRad) * cos(lonRad)
        return SCNVector3(x, y, z)
    }
}
