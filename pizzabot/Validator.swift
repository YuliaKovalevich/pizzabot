//
//  Validator.swift
//  Pizzabot
//
//

import Foundation

class Validator {
    
    private let consoleIO = ConsoleIO()
    
    func isValidBorders(for point: Point,
                        from originalPoint: Point,
                        to finalPoint: Point) -> Bool {
        guard
            point.x >= originalPoint.x,
            point.y >= originalPoint.y,
            point.x <= finalPoint.x,
            point.y <= finalPoint.y
        else {
            consoleIO.writeMessage("This point (\(point.x), \(point.y)) is out of border.", to: .error)
            return false
        }
        
        return true
    }
    
    func isValidInputString(_ inputString: String) -> Bool {
        let modifiedString = inputString.replacingOccurrences(of: " ", with: "")
        let inputStringPattern = #"\d+x\d+(\(\d+,\d+\))+$"#
        let result = modifiedString.range(
            of: inputStringPattern,
            options: .regularExpression
        )
        return (result != nil)
    }
}
