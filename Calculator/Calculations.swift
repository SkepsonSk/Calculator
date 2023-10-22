//
//  Calculations.swift
//  Calculator
//
//  Created by Jakub Zelmanowicz on 03/10/2023.
//

import Foundation

struct Calculations {
    
    static func add(a: Int, b: Int) -> Double {
        return Double(a+b)
    }
    
    static func substract(a: Int, b: Int) -> Double {
        return Double(a-b)
    }
    
    static func multiply(a: Int, b: Int) -> Double {
        return Double(a*b)
    }
    
    static func divide(a: Int, b: Int) -> Double? {
        if (b == 0) {
            return nil
        }
        return Double(a)/Double(b)
    }
    
    static func sin(value: Int) -> Double {
        return Foundation.sin(Double(value))
    }
    
}
