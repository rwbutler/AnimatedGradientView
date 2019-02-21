//
//  Animation.swift
//  AnimatedGradientView
//
//  Created by Ross Butler on 2/21/19.
//

import Foundation

@objc public class AnimatedGradientViewAnimation: NSObject {
    let colorStrings: [String]
    let direction: AnimatedGradientView.Direction
    let type: CAGradientLayerType
    
    public init(colorStrings: [String], direction: AnimatedGradientView.Direction, type: CAGradientLayerType = .axial) {
        self.colorStrings = colorStrings
        self.direction = direction
        self.type = type
    }
}
