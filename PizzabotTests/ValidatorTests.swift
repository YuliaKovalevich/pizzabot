//
//  ValidatorTests.swift
//  PizzabotTests
//
//

import XCTest

class ValidatorTests: XCTestCase {
    
    var sut: Validator!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Validator()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testIsValidBordersIsCorrect() {
        let originalPoint = Point(x: 0, y: 0)
        let finalPoint = Point(x: 5, y: 5)
        let point = Point(x: 1, y: 3)
        
        let result = sut.isValidBorders(for: point, from: originalPoint, to: finalPoint)
        
        XCTAssertTrue(result)
    }
    
    func testIsValidBordersIsNotCorrect() {
        let originalPoint = Point(x: 0, y: 0)
        let finalPoint = Point(x: 5, y: 5)
        let point = Point(x: 6, y: 3)
        
        let result = sut.isValidBorders(for: point, from: originalPoint, to: finalPoint)
        
        XCTAssertFalse(result)
    }
    
    func testIsValidInputString() {
        let inputString = "5x5 (1, 3) (4, 4)"
        
        let result = sut.isValidInputString(inputString)
        
        XCTAssertTrue(result)
    }
    
    func testIsNotValidInputStringFirst() {
        let inputString = "5x5 1, 3) (4, 4)"
        
        let result = sut.isValidInputString(inputString)
        
        XCTAssertFalse(result)
    }
    
    func testIsNotValidInputStringSecond() {
        let inputString = "5 5 (1, 3) (4, 4)"
        
        let result = sut.isValidInputString(inputString)
        
        XCTAssertFalse(result)
    }
}
