//
//  AnimatedGradientColor.swift
//  AnimatedGradientView
//
//  Created by Ross Butler on 2/20/19.
//

import Foundation
import CoreGraphics
import CoreImage
import UIKit

public enum AnimatedGradientViewColor {
    case black
    case darkGray
    case lightGray
    case white
    case gray
    case red
    case green
    case blue
    case cyan
    case yellow
    case magenta
    case orange
    case purple
    case brown
    case clear
    case hex(string: String)
    case named(string: String)
    // swiftlint:disable:next variable_name
    case rgb(r: Float, g: Float, b: Float)
    // swiftlint:disable:next variable_name
    case rgba(r: Float, g: Float, b: Float, a: Float)
    
    static var colorNameMap: [String: UIColor] {
        return ["black": .black,
                "darkGray": .darkGray,
                "lightGray": .lightGray,
                "white": .white,
                "gray": .gray,
                "red": .red,
                "green": .green,
                "blue": .blue,
                "cyan": .cyan,
                "yellow": .yellow,
                "magenta": .magenta,
                "orange": .orange,
                "purple": .purple,
                "brown": .brown,
                "clear": .clear]
    }
    
    public var cgColor: CGColor {
        return self.uiColor.cgColor
    }
    
    public var ciColor: CIColor {
        return self.uiColor.ciColor
    }
    
    public var uiColor: UIColor {
        switch self {
        case .black:
            return .black
        case .darkGray:
            return .darkGray
        case .lightGray:
            return .lightGray
        case .white:
            return .white
        case .gray:
            return .gray
        case .red:
            return .red
        case .green:
            return .green
        case .blue:
            return .blue
        case .cyan:
            return .cyan
        case .yellow:
            return .yellow
        case .magenta:
            return .magenta
        case .orange:
            return .orange
        case .purple:
            return .purple
        case .brown:
            return .brown
        case .clear:
            return .clear
        case .named(let colorName):
            if #available(iOS 11, *), let color = UIColor(named: colorName) {
                return color
            }
            return type(of: self).colorNameMap[colorName]! // Previously validated
        case .hex(let hexString):
            return type(of: self).parseHex(hexString: hexString)!.uiColor // Previously validated
        case .rgb(let red, let green, let blue):
            return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
        case .rgba(let red, let green, let blue, let alpha):
            return UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
        }
    }
    
    public init?(string: String) {
        switch string {
        case "#[a-zA-Z0-9]{6}", "[a-zA-Z0-9]{6}":
            if type(of: self).parseHex(hexString: string) != nil { // Check can be converted to a color
                self = .hex(string: string)
                break
            }
            return nil
        // swiftlint:disable:next line_length
        case "rgb\\(([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5]),([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5]),([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])\\)",
             // swiftlint:disable:next line_length
        "\\(([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5]),([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5]),([01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])\\)":
            let rgbValues = type(of: self).rgbValues(from: string)
            if rgbValues.count == 3,
                let red = Float(rgbValues[0]),
                let green = Float(rgbValues[1]),
                let blue = Float(rgbValues[2]) {
                self = .rgb(r: red / 255.0, g: green / 255.0, b: blue / 255.0)
                break
            }
            return nil
        default:
            if #available(iOS 11, *), UIColor(named: string) != nil { // Validate a color is returned
                self = .named(string: string)
                break
            }
            if type(of: self).colorNameMap[string] != nil { // Validate a color is returned
                self = .named(string: string)
                break
            }
            return nil
        }
    }
    
    private static func rgbValues(from string: String) -> [String] {
        var colorValues: [String] = []
        do {
            let colorComponentPattern = "[01]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5]"
            let colorComponentRegEx = try NSRegularExpression(pattern: colorComponentPattern,
                                                              options: .dotMatchesLineSeparators)
            let matches = colorComponentRegEx.matches(in: string,
                                                      options: [],
                                                      range: NSRange(location: 0, length: string.count))
            for match in matches {
                let matchEndIndex = match.range.location + match.range.length
                let startIdx = string.index(string.startIndex, offsetBy: match.range.location)
                let endIdx = string.index(string.startIndex, offsetBy: matchEndIndex)
                let range = startIdx..<endIdx
                colorValues.append(String(string[range]))
            }
        } catch {} // Just return empty array
        return colorValues
    }
    
    /// Parses a hexadecimal string to a color if possible
    private static func parseHex(hexString: String) -> AnimatedGradientViewColor? {
        let unparsed = hexString.hasPrefix("#")
            ? String(hexString[hexString.index(after: hexString.startIndex)...])
            : hexString
        
        let redComponentIdx = unparsed.startIndex,
        greenComponentIdx = unparsed.index(unparsed.startIndex, offsetBy: 2),
        blueComponentIdx = unparsed.index(unparsed.startIndex, offsetBy: 4)
        
        let redComponent = unparsed[redComponentIdx..<greenComponentIdx],
        greenComponent = unparsed[greenComponentIdx..<blueComponentIdx],
        blueComponent = unparsed[blueComponentIdx..<unparsed.endIndex]
        
        if let rInt = UInt(redComponent, radix: 16),
            let gInt = UInt(greenComponent, radix: 16),
            let bInt = UInt(blueComponent, radix: 16) {
            let red = Float(rInt) / 255.0
            let green = Float(gInt) / 255.0
            let blue = Float(bInt) / 255.0
            return .rgb(r: red,
                        g: green,
                        b: blue)
        }
        return nil
    }
}
