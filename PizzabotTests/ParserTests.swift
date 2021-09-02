//
//  ParserTests.swift
//  PizzabotTests
//
//

import XCTest

class ParserTests: XCTestCase {
    
    var sut: Parser!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Parser()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testParseInputStringIsNotNil() {
        let inputString = "5x5 (1, 3) (4, 4)"
        let correctFinalPoint = Point(x: 5, y: 5)
        let correctPoints = [Point(x: 1, y: 3),
                             Point(x:4, y: 4)]
        
        let response = sut.parse(inputString)
        
        XCTAssertEqual(response?.finalPoint, correctFinalPoint)
        XCTAssertEqual(response?.points, correctPoints)

    }
    
    func testParseIsNotCorrectInputStringIsNil() {
        let inputString = "5x5 1, 3) (4, 4)"
        
        let result = sut.parse(inputString)
        
        XCTAssertNil(result)
    }
}
