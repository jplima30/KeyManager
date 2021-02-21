//
//  PasswordGenerator.swift
//  KeyManager
//
//  Created by Joao Paulo Lima Silva on 21/02/21.
//

import Foundation

class PasswordGenerator {
    
    var numberOfPassword: Int
    var numberOfCharacters: Int
    var useLetters: Bool
    var useNumbers: Bool
    var useOfCapittalLeters: Bool
    var useSpecialCharacters: Bool
    var passwords: [String] = []
    
    private let  letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialCharacters = "!@#$%¨&*()_-+=˜|]}'[{:;?/<>.,"
    private let numbers = "0123456789"
    
    init(numberOfPassword: Int, numberOfCharacters: Int, useLetters: Bool, useNumbers: Bool, useOfCapittalLeters: Bool, useSpecialCharacters: Bool) {
        
        var numChars = min(numberOfCharacters, 16)
        numChars = max(numChars, 1)
        self.numberOfPassword = numberOfPassword
        self.numberOfCharacters = numChars
        self.useLetters = useLetters
        self.useNumbers = useNumbers
        self.useOfCapittalLeters = useOfCapittalLeters
        self.useSpecialCharacters = useSpecialCharacters
    }
    
    
    func generatePassword(total: Int) -> [String] {
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters {
            universe += letters
        }
        
        if useNumbers {
            universe += numbers
        }
        
        if useSpecialCharacters {
            universe += specialCharacters
        }
        
        if useOfCapittalLeters {
            universe += letters.uppercased() //Gerando letra maiúscula com uppercased
        }
        
        let universeArray = Array(universe)
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacters {
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                             password += String(universeArray[index])
            }
            passwords.append(password)
        }
        return passwords
    }
    
}

