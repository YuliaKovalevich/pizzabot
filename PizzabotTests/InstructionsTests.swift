//
//  InstructionsTests.swift
//  PizzabotTests
//
//

import XCTest

class InstructionsTests: XCTestCase {
    
    var sut: Instructions!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Instructions()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testMakeInstructionsIsNotEmty() {
        let originalPoint = Point(x: 0, y: 0)
        let finalPoint = Point(x: 5, y: 5)
        let points = [Point(x: 1, y: 3),
                      Point(x: 4, y: 4)]
        let correctResult = "ENNNDEEEND"

        let result = sut.makeInstructions(from: originalPoint, to: finalPoint, points)
        
        XCTAssertEqual(result, correctResult)
    }
    
    func testMakeInstructionsIsEmty() {
        let originalPoint = Point(x: 0, y: 0)
        let finalPoint = Point(x: 5, y: 5)
        let points: [Point] = []
        let correctResult = ""

        let result = sut.makeInstructions(from: originalPoint, to: finalPoint, points)
        
        XCTAssertEqual(result, correctResult)
    }
}
