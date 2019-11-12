//
//  Animation.swift
//  AnimatedGradientView
//
//  Created by Ross Butler on 2/21/19.
//

import Foundation
import CoreGraphics
import QuartzCore

@objc public class AnimatedGradientViewAnimation: NSObject {
    let colorStrings: [String]
    let direction: AnimatedGradientView.Direction
    let locations: [NSNumber]?
    let type: CAGradientLayerType
    
    public init(colorStrings: [String], direction: AnimatedGradientView.Direction,
                locations: [NSNumber]? = nil, type: CAGradientLayerType = .axial) {
        self.colorStrings = colorStrings
        self.direction = direction
        self.locations = locations
        self.type = type
    }
}
