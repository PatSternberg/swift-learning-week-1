//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Patrick Skipworth on 10/04/2024.
//

import XCTest
@testable import FizzBuzz

//final class YourProjectTests: XCTestCase {
//    // This would be our test case
//    func testRegisteringFoodAddsToFoodOptions() {
//        // Arrange
//        let tastyFood = "salmon"
//        let pet = Pet()
//
//        // Act
//        pet.registerFood(food: "salmon")
//        let foodOptions = pet.getFoodOptions()
//        print(foodOptions)
//        
//        // Assert
//        XCTAssertTrue(foodOptions.contains(tastyFood))
//    }
//}

//Fizzbuzz
//
//Your task is to test-drive a program that takes a max number and returns a string. The string should list out the numbers counting up to and including the given max number, substituting Fizz where the number is divisible by 3, Buzz where it is divisible by 5, and FizzBuzz where it is divisible by both 3 and 5.
//
//Here's an example:
//
//CALLING:
//  fizzbuzz(number: 15)
//SHOULD RETURN:
//  "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"
//
//You're going to test drive this, which will be much easier if you avoid printing to the terminal.
//What you'll need to keep learning and researching

final class YourProjectTests: XCTestCase {
    // Test FizzBuzz functionality
    func testFifteen() {
        // Arrange
        let testResult = "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"
        let fizzBuzzer = FizzBuzzer()
        
        // Act
        let result = fizzBuzzer.doWork(val: 15)

        // Assert
        XCTAssertEqual(result, testResult)
    }
}
