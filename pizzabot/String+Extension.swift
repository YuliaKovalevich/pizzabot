//
//  String+Extension.swift
//  Pizzabot
//
//

import Foundation

extension String {
    func modifyInputString() -> String {
        return self.replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: Symbol.cross.rawValue, with: Symbol.comma.rawValue)
            .replacingOccurrences(of: Symbol.openBracket.rawValue, with: Symbol.comma.rawValue)
            .replacingOccurrences(of: Symbol.closeBracket.rawValue, with: Symbol.comma.rawValue)
    }
}
