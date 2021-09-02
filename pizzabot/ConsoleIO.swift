//
//  ConsoleIO.swift
//  Pizzabot
//
//

import Foundation

enum OutputType {
    case error
    case standard
}

class ConsoleIO {
    
    func writeMessage(_ message: String, to: OutputType = .standard) {
        switch to {
        case .standard:
            print("\(message)")
        case .error:
            fputs("Error: \(message)\n", stderr)
        }
    }
    
    func getInputString() -> String {
        var arguments = CommandLine.arguments
        arguments.removeFirst()
        let inputString = arguments.joined()
        return inputString
    }
}
