//
//  Instructions.swift
//  Pizzabot
//
//

import Foundation

enum Axis {
    case axisX
    case axisY
}

class Instructions {
    
    private let validator = Validator()
    
    func makeInstructions(from originalPoint: Point,
                         to finalPoint: Point,
                         _ points: [Point]) -> String? {
        var instructions = ""
        var previousPoint = originalPoint
        
        for point in points {
            if validator.isValidBorders(for: point, from: originalPoint, to: finalPoint) {
                instructions += makeInstructions(from: previousPoint,
                                                 to: point)
                previousPoint = point
            }
        }
        return instructions
    }
    
    private func makeInstructions(from previousPoint: Point,
                                  to point: Point) -> String {
        var outputString = generateInstructions(from: previousPoint.x, to: point.x, for: .axisX)
        outputString += generateInstructions(from: previousPoint.y, to: point.y, for: .axisY)

        return outputString + Movements.dropPizza.rawValue
    }
    
    private func generateInstructions(from firstPoint: Int,
                                  to secondPoint: Int,
                                  for axis: Axis) -> String {
        let value = secondPoint - firstPoint
        let movement = getMovement(for: value, where: axis)
        return String(repeating: movement, count: abs(value))
    }
    
    private func getMovement(for value: Int, where axis: Axis) -> String {
        switch axis {
        case .axisX where value > 0:
            return Movements.moveEast.rawValue
        case .axisX where value < 0:
            return Movements.moveWest.rawValue
        case .axisY where value > 0:
            return Movements.moveNorth.rawValue
        case .axisY where value < 0:
            return Movements.moveSouth.rawValue
        default:
            return ""
        }
    }
}
