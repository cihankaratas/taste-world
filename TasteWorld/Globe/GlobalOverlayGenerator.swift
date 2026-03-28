import UIKit
import SceneKit

struct GlobalOverlayGenerator {
    static func generateFlagTexture(countries: [Country], boundaries: [CountryBoundary], size: CGSize = CGSize(width: 4096, height: 2048)) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { ctx in
            // Clear background (completely transparent)
            ctx.cgContext.clear(CGRect(origin: .zero, size: size))
            
            for country in countries {
                guard let boundary = boundaries.first(where: { $0.countryId == country.id }) else { continue }
                
                let path = UIBezierPath()
                for (pi, polygon) in boundary.polygons.enumerated() {
                    guard let first = polygon.first else { continue }
                    
                    // Start of polygon
                    path.move(to: project(lat: first.lat, lon: first.lon, size: size))
                    
                    // We need to handle antimeridian wrap-around during drawing too!
                    // If a polygon segment is too long, it's a wrap-around. 
                    // But in a 2D equirectangular image, we just draw two separate polygons or use clipping.
                    // For Natural Earth 110m, most polygons are already split at -180/180 or stay within one side.
                    for i in 1..<polygon.count {
                        let pt = polygon[i]
                        path.addLine(to: project(lat: pt.lat, lon: pt.lon, size: size))
                    }
                    path.close()
                }
                
                ctx.cgContext.saveGState()
                
                path.addClip()
                
                if let flagImg = UIImage(named: "\(country.id)_flag") {
                    let bounds = path.bounds
                    let imgAspect = flagImg.size.width / flagImg.size.height
                    let boundsAspect = bounds.width / bounds.height
                    
                    var drawRect = bounds
                    if imgAspect > boundsAspect {
                        let newWidth = bounds.height * imgAspect
                        drawRect.origin.x = bounds.minX - (newWidth - bounds.width) / 2
                        drawRect.size.width = newWidth
                    } else {
                        let newHeight = bounds.width / imgAspect
                        drawRect.origin.y = bounds.minY - (newHeight - bounds.height) / 2
                        drawRect.size.height = newHeight
                    }
                    
                    flagImg.draw(in: drawRect, blendMode: .normal, alpha: 0.85)
                } else {
                    let color = getPrimaryColor(for: country.flag)
                    color.withAlphaComponent(0.85).setFill()
                    path.fill()
                }
                
                // Draw country name
                let bounds = path.bounds
                if bounds.width > 8 && bounds.height > 8 {
                    let text = country.name.uppercased()
                    let maxFontSize: CGFloat = 36.0
                    var fontSize = min(max(bounds.width * 0.12, 5.0), maxFontSize)
                    
                    let shadow = NSShadow()
                    shadow.shadowColor = UIColor.black.withAlphaComponent(0.8)
                    shadow.shadowOffset = CGSize(width: 1, height: 1)
                    shadow.shadowBlurRadius = 3
                    
                    var attrs: [NSAttributedString.Key: Any] = [
                        .font: UIFont.systemFont(ofSize: fontSize, weight: .black),
                        .foregroundColor: UIColor.white,
                        .shadow: shadow
                    ]
                    
                    var textSize = (text as NSString).size(withAttributes: attrs)
                    
                    // Shrink if too wide
                    if textSize.width > bounds.width * 0.9 {
                        fontSize = fontSize * (bounds.width * 0.9 / textSize.width)
                        attrs[.font] = UIFont.systemFont(ofSize: fontSize, weight: .black)
                        textSize = (text as NSString).size(withAttributes: attrs)
                    }
                    
                    if fontSize >= 4.0 {
                        let textRect = CGRect(
                            x: bounds.midX - textSize.width / 2,
                            y: bounds.midY - textSize.height / 2,
                            width: textSize.width,
                            height: textSize.height
                        )
                        (text as NSString).draw(in: textRect, withAttributes: attrs)
                    }
                }
                
                // Subtle white border
                UIColor.white.withAlphaComponent(0.4).setStroke()
                path.lineWidth = 1.0
                path.stroke()
                
                ctx.cgContext.restoreGState()
            }
        }
    }
    
    private static func project(lat: Double, lon: Double, size: CGSize) -> CGPoint {
        let x = (lon + 180) / 360 * size.width
        let y = (90 - lat) / 180 * size.height
        return CGPoint(x: x, y: y)
    }
    
    private static func getPrimaryColor(for emoji: String) -> UIColor {
        // Red for Turkey, USA, Japan, etc.
        if ["🇹🇷", "🇺🇸", "🇯🇵", "🇨🇳", "🇨🇦", "🇨🇭", "🇻🇳"].contains(emoji) {
            return UIColor(red: 0.8, green: 0, blue: 0, alpha: 1)
        }
        // Green for Brazil, Saudi, etc.
        if ["🇧🇷", "🇸🇦", "🇳🇬", "🇵🇰"].contains(emoji) {
            return UIColor(red: 0, green: 0.6, blue: 0.2, alpha: 1)
        }
        // Blue for Greece, Israel, etc.
        if ["🇬🇷", "🇮🇱", "🇦🇷", "🇫🇯"].contains(emoji) {
            return UIColor(red: 0.2, green: 0.5, blue: 0.9, alpha: 1)
        }
        // White/Gray fallback
        return UIColor(white: 0.95, alpha: 1.0)
    }
}
