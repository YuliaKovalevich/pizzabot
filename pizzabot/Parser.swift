//
//  Parser.swift
//  Pizzabot
//
//

import Foundation

enum ParseError: String {
    case invalidInputString = "Invalid input string."
    case invalidFinalPointString = "Invalid final point string."
    case invalidPointString = "Invalid point string."
}

class Parser {
    
    private let consoleIO = ConsoleIO()
    private let validator = Validator()
    
    func parse(_ inputString: String) -> (finalPoint: Point, points: [Point])? {
        guard validator.isValidInputString(inputString)
        else {
            consoleIO.writeMessage(ParseError.invalidInputString.rawValue)
            return nil
        }
        
        let modifiedString = inputString.modifyInputString()
        let coordinates = modifiedString.components(separatedBy: Symbol.comma.rawValue)
                                        .filter({ !$0.isEmpty})
        
        guard let finalPoint = getPoint(from: coordinates, for: 0)
        else {
            consoleIO.writeMessage(ParseError.invalidFinalPointString.rawValue)
            return nil
        }
        
        guard let points = parsePoints(from: coordinates)
        else {
            consoleIO.writeMessage(ParseError.invalidPointString.rawValue)
            return nil
        }
        return (finalPoint: finalPoint, points: points)
    }
    
    private func parsePoints(from coordinates: [String]) -> [Point]? {
        var i = 2
        var points = [Point]()
        while i < coordinates.count {
            guard let point = getPoint(from: coordinates, for: i)
            else {
                return nil
            }
            points.append(point)
            i += 2
        }
        return points
    }
    
    private func getPoint(from coordinates: [String], for iteration: Int) -> Point? {
        var i = iteration
        if coordinates.count - 1 > i {
            guard let pointX = Int(coordinates[i]) else { return nil }
            i += 1
            guard let pointY = Int(coordinates[i]) else { return nil }
            return Point(x: pointX, y: pointY)
        }
        return nil
    }
}
