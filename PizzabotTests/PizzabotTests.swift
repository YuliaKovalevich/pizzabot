//
//  PizzabotTests.swift
//  PizzabotTests
//
//

import XCTest

class PizzabotTests: XCTestCase {
    
    var sut: Pizzabot!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Pizzabot()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testGetInstructionsFromPizzabot() {
        let inputString = "5x5 (1, 3) (4, 4)"
        let correctResponse = "ENNNDEEEND"
        
        let result = sut.pizzabot(inputString)
        
        XCTAssertEqual(result!, correctResponse)
    }
    
    func testGetLongInstructionsFromPizzabot() {
        let inputString = "5x5 (0, 0) (1, 3) (4,4) (4, 2) (4, 2) (0, 1) (3, 2) (2, 3) (4, 1)"
        let correctResponse = "DENNNDEEENDSSDDWWWWSDEEENDWNDEESSD"
        
        let result = sut.pizzabot(inputString)
        
        XCTAssertEqual(result!, correctResponse)
    }
}
