import UIKit

//Initial Swift practice

//let greeting = "Hello, playground!"
//
//var myName = "Pat"
//
//var introduction = "My name is \(myName)"
//
//var fullGreet = "\(greeting) \(introduction)"
//
//print(greeting)
//print(introduction)
//print(fullGreet)
//
//
////If I have fifty apples and eat twenty-three, how many do I have?
//print(50-23)
//
////The number of minutes in 2022.
//print(365*24*60)
//
////If I have 32,452 herring and I want to group them into tanks of 13 herring each:
////How many tanks do I need?
//print(32452/13)
//
////One of the tanks won't have 13 herring in — how many herring will it have?
//print(32452&13)
//
////1000000000 is such a long number. Is there a way in Swift to break up that number 
////so that it is easier to visualise it for humans?
//let n = 1000000000
//var nString = String(n)
//
//print(n)

//If / else practice
let randomInt = Int.random(in: 1..<6)

// Print "One" if `randomInt` is 1
// Print "Two" if `randomInt` is 2
// Print "More" if `randomInt is above 2
func randomStr() -> String {
    let result: Int = randomInt
    if result == 1 {
        return "One"
    } else if result == 2 {
        return "Two"
    } else {
        return "More"
    }
}

print(randomStr())

//Switch practice
let roles = ["doctor", "nurse", "patient", "driver", "plumber", "tailor"]
var role = roles.randomElement()
role = "tailor"

// Print "Please go to the second floor" if `role` is "doctor"
// Print "Please go to the first floor" if `role` is "nurse"
// Print "Please go to the waiting room" if `role` is "patient"
// Print "Please go to reception" if `role` is none of the above
switch role {
    case "doctor":
        print("Please go to the second floor")

    case "nurse":
        print("Please go to the first floor")

    case "patient":
        print("Please go to the waiting room")

    default:
        print("Please go to reception")
}

//Control flow challenge
let randomFizzBuzzInt = Int.random(in: 1..<101)

// Print "Fizz" if `randomInt` is divisible by 3
// Print "Buzz" if `randomInt` is divisible by 5
// Print "FizzBuzz" if `randomInt` is divisible by 3 and 5
// Otherwise, print `randomInt`
if (( randomFizzBuzzInt % 3 ) == 0) && (( randomFizzBuzzInt % 5 ) == 0) {
    print("FizzBuzz")
} else if ( randomFizzBuzzInt % 3 ) == 0 {
    print("Fizz")
} else if ( randomFizzBuzzInt % 5 ) == 0 {
    print("Buzz")
} else {
    print(String(randomFizzBuzzInt))
}
