//
//  AnimatedGradientDirection.swift
//  AnimatedGradientView
//
//  Created by Ross Butler on 2/20/19.
//

import Foundation

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
    
    var stopPoint: CGPoint {
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
