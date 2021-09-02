//
//  main.swift
//  Pizzabot
//
//

import Foundation

let pizzabot = Pizzabot()
let consoleIO = ConsoleIO()

if CommandLine.argc < 2 {
    consoleIO.writeMessage("You had to enter the string.", to: .error)
} else {
    let inputString = consoleIO.getInputString()
    if let instructions = pizzabot.pizzabot(inputString) {
        print(instructions)
    }
}
