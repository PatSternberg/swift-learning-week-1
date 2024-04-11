//
//  Pet.swift
//  FizzBuzz
//
//  Created by Patrick Skipworth on 10/04/2024.
//

import Foundation

class Pet {
    var foodOptions = [String]()

    func registerFood(food: String) {
        foodOptions.append(food)
    }
    
    func getFoodOptions() -> [String] {
        return foodOptions
    }
}
