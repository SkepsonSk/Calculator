//
//  CalculationsTest.swift
//  CalculatorTests
//
//  Created by Jakub Zelmanowicz on 22/10/2023.
//

import XCTest
@testable import Calculator

final class CalculationsTest: XCTestCase {

    func testPositiveScenarioForAddCalculation() {
        let a = 2
        let b = 1
        
        let result = Calculations.add(a: a, b: b)
        
        XCTAssertEqual(result, 3)
    }
    
    func testNegativeScenarioForAddCalculation() {
        let a = -2
        let b = -1
        
        let result = Calculations.add(a: a, b: b)
        
        XCTAssertEqual(result, -3)
    }
    
    func testPositiveScenarioForSubCalculation() {
        let a = 2
        let b = 1
        
        let result = Calculations.substract(a: a, b: b)
        
        XCTAssertEqual(result, 1)
    }
    
    func testNegativeScenarioForSubCalculation() {
        let a = -2
        let b = -1
        
        let result = Calculations.substract(a: a, b: b)
        
        XCTAssertEqual(result, -1)
    }
    
    func testPositiveScenarioForProdCalculation() {
        let a = 2
        let b = 1
        
        let result = Calculations.multiply(a: a, b: b)
        
        XCTAssertEqual(result, 2)
    }
    
    func testNegativeScenarioForProdCalculation() {
        let a = -2
        let b = -1
        
        let result = Calculations.multiply(a: a, b: b)
        
        XCTAssertEqual(result, 2)
    }
    
    func testPositiveScenarioForDivCalculation() {
        let a = 2
        let b = 1
        
        let result = Calculations.divide(a: a, b: b)
        
        XCTAssertEqual(result, 2)
    }
    
    func testZeroScenarioForDivCalculation() {
        let a = 2
        let b = 0
        
        let result = Calculations.divide(a: a, b: b)
        
        XCTAssertNil(result)
    }
    
    func testPositiveScenarioForSinCalculation() {
        let a = 4
        
        let result = Calculations.sin(value: a)
        
        XCTAssertEqual(result, Foundation.sin(Double(a)))
    }
 
}
