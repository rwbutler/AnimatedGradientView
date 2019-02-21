//
//  Collection+UniqueMap.swift
//  AnimatedGradientView
//
//  Created by Ross Butler on 2/20/19.
//

import Foundation

extension Collection {
    
    // swiftlint:disable:next variable_name
    internal func _expectEnd<C: Collection>(of s: C, is i: C.Index) {
        _debugPrecondition(
            i == s.endIndex,
            "invalid Collection: count differed in successive traversals")
    }
    
    /// Whether or not the collection is __not__ empty.
    /// returns: A `Bool` indicating whether or not the collection is __not__ empty.
    public var isNotEmpty: Bool {
        return !isEmpty
    }
    
    public func uniqueMap<T: Equatable>(_ transform: (Iterator.Element) throws -> T
        ) rethrows -> [T] {
        
        let count: Int = numericCast(self.count)
        if isEmpty {
            return []
        }
        
        var result = ContiguousArray<T>()
        result.reserveCapacity(count)
        // swiftlint:disable:next identifier_name
        var i = self.startIndex
        
        for _ in 0..<count {
            let transformed = try transform(self[i])
            if !result.contains(where: { $0 == transformed }) {
                result.append(transformed)
            }
            formIndex(after: &i)
        }
        
        _expectEnd(of: self, is: i)
        return Array(result)
    }
    
}
