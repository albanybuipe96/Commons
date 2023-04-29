// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

extension Decimal {
    func toDouble() -> Double {
        return Double(truncating: self as NSNumber)
    }
}

extension Double {
    func round(to places: Int) -> Double {
        let precision = pow(10, places)
        var n = self
        n *= precision.toDouble()
        n.round()
        n /= precision.toDouble()
        return n
    }
    
    func round1(to places: Int) -> Double {
        let precision = pow(10, Double(places))
        var n = self
        n *= precision
        n.round()
        n /= precision
        return n
    }
    
    func round2(to places: Int) -> Double {
        return Double(String(format: "%.\(places)f", self))!
    }
}
