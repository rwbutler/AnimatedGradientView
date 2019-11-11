//
//  AnimatedGradientDirection.swift
//  AnimatedGradientView
//
//  Created by Ross Butler on 2/20/19.
//

import Foundation
import CoreGraphics

@objc public enum AnimatedGradientViewDirection: Int {
    case up
    case upRight
    case right
    case downRight
    case down
    case downLeft
    case left
    case upLeft
    
    var startPoint: CGPoint {
        let result: CGPoint
        switch self {
        case .up:
            result = CGPoint(x: 0.5, y: 1.0)
        case .upRight:
            result = CGPoint(x: 0.0, y: 1.0)
        case .right:
            result = CGPoint(x: 0.0, y: 0.5)
        case .downRight:
            result = CGPoint(x: 0.0, y: 0.0)
        case .down:
            result = CGPoint(x: 0.5, y: 0.0)
        case .downLeft:
            result = CGPoint(x: 1.0, y: 0.0)
        case .left:
            result = CGPoint(x: 1.0, y: 0.5)
        case .upLeft:
            result = CGPoint(x: 1.0, y: 1.0)
        }
        return result
    }
    
    var endPoint: CGPoint {
        let result: CGPoint
        switch self {
        case .up:
            result = CGPoint(x: 0.5, y: 0.0)
        case .upRight:
            result = CGPoint(x: 1.0, y: 0.0)
        case .right:
            result = CGPoint(x: 1.0, y: 0.5)
        case .downRight:
            result = CGPoint(x: 1.0, y: 1.0)
        case .down:
            result = CGPoint(x: 0.5, y: 1.0)
        case .downLeft:
            result = CGPoint(x: 0.0, y: 1.0)
        case .left:
            result = CGPoint(x: 0.0, y: 0.5)
        case .upLeft:
            result = CGPoint(x: 0.0, y: 0.0)
        }
        return result
    }
}

extension AnimatedGradientViewDirection: CustomStringConvertible {
    public var description: String {
        switch self {
        case .up:
            return "up"
        case .down:
            return "down"
        case .downLeft:
            return "down left"
        case .downRight:
            return "down right"
        case .left:
            return "left"
        case .right:
            return "right"
        case .upRight:
            return "up right"
        case .upLeft:
            return "up left"
        }
    }
}
