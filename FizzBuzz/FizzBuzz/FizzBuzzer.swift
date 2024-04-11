//
//  FizzBuzzer.swift
//  FizzBuzz
//
//  Created by Patrick Skipworth on 10/04/2024.
//

import Foundation

class FizzBuzzer {
    
    func doWork(val: Int) -> String {
        var result = ""
        
        for i in 1...val {
            if i % 3 == 0 && i % 5 == 0 {
                result += "FizzBuzz"
            } else if i % 3 == 0 {
                result += "Fizz"
            } else if i % 5 == 0 {
                result += "Buzz"
            } else {
                result += "\(i)"
            }
            
            if i < val {
                result += ", "
            }
        }
        
        return result
    }
}
