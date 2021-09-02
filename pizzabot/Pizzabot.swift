//
//  Pizzabot.swift
//  Pizzabot
//
//

import Foundation

class Pizzabot {
    
    private let parser = Parser()
    private let instructions = Instructions()
    
    private let originalPoint = Point(x: 0, y: 0)
    
    func pizzabot(_ inputString: String) -> String? {
        guard let resultParser = parser.parse(inputString) else { return nil }
        guard let instructions = instructions.makeInstructions(from: originalPoint,
                                                               to: resultParser.finalPoint,
                                                               resultParser.points)
        else { return nil }
        return instructions
    }
}
