//
//  RegularExpressionMatchable.swift
//  AnimatedGradientView
//
//  Created by Ross Butler on 2/20/19.
//

import Foundation

protocol RegularExpressionPatternMatchable {
    static func ~= (lhs: Self, rhs: Self) -> Bool
}
