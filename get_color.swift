import Foundation
import AppKit

let imagePath = "/Users/henry/.gemini/antigravity/brain/3e909442-60c2-4fec-8783-6ed7cf474040/live_desktop_1772224548268.png"
guard let image = NSImage(contentsOfFile: imagePath) else {
    print("Could not load image")
    exit(1)
}

guard let tiffData = image.tiffRepresentation,
      let bitmap = NSBitmapImageRep(data: tiffData) else {
    print("Could not get bitmap")
    exit(1)
}

let color = bitmap.colorAt(x: 100, y: 100)!
func toHex(_ f: CGFloat) -> String {
    let i = Int(round(f * 255))
    return String(format: "%02x", i)
}

let hex = "#\(toHex(color.redComponent))\(toHex(color.greenComponent))\(toHex(color.blueComponent))"
print("Color: \(hex)")
