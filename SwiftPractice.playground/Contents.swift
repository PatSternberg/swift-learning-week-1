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

////If / else practice
//let randomInt = Int.random(in: 1..<6)
//
//// Print "One" if `randomInt` is 1
//// Print "Two" if `randomInt` is 2
//// Print "More" if `randomInt is above 2
//func randomStr() -> String {
//    let result: Int = randomInt
//    if result == 1 {
//        return "One"
//    } else if result == 2 {
//        return "Two"
//    } else {
//        return "More"
//    }
//}
//
//print(randomStr())

////Switch practice
//let roles = ["doctor", "nurse", "patient", "driver", "plumber", "tailor"]
//var role = roles.randomElement()
//role = "tailor"
//
//// Print "Please go to the second floor" if `role` is "doctor"
//// Print "Please go to the first floor" if `role` is "nurse"
//// Print "Please go to the waiting room" if `role` is "patient"
//// Print "Please go to reception" if `role` is none of the above
//switch role {
//    case "doctor":
//        print("Please go to the second floor")
//
//    case "nurse":
//        print("Please go to the first floor")
//
//    case "patient":
//        print("Please go to the waiting room")
//
//    default:
//        print("Please go to reception")
//}

////Control flow challenge
//let randomFizzBuzzInt = Int.random(in: 1..<101)
//
//// Print "Fizz" if `randomInt` is divisible by 3
//// Print "Buzz" if `randomInt` is divisible by 5
//// Print "FizzBuzz" if `randomInt` is divisible by 3 and 5
//// Otherwise, print `randomInt`
//if (( randomFizzBuzzInt % 3 ) == 0) && (( randomFizzBuzzInt % 5 ) == 0) {
//    print("FizzBuzz")
//} else if ( randomFizzBuzzInt % 3 ) == 0 {
//    print("Fizz")
//} else if ( randomFizzBuzzInt % 5 ) == 0 {
//    print("Buzz")
//} else {
//    print(String(randomFizzBuzzInt))
//}
//
//var nFactorial = 1
//
//for index in 1...17 {
//    nFactorial = nFactorial * index
//    print("\(nFactorial)")
//}
//
//print("Total is: \(nFactorial)")

////Data structures practice
//
//var myList = ["Cat", "Mouse", "Frog"]
//
//// Write some code to amend the list here.
//myList.append("Frog")
//
//print(myList)
//// Should print:
//// ["Mouse", "Lynx", "Cat", "Frog"]
//
//let myAnimals = ["Cat", "cat", "frog", "cat", "dog", "Dog"]
//var counters = [String: Int]()
//// Do not worry about this syntax for now!
//// All we have done is declared an empty dictionary
//// with keys being strings and values being numbers
//
//// Write some code to count the items in the array here
//for animal in myAnimals {
//    var lowerAnimal = animal.lowercased()
//    counters[lowerAnimal, default: 0] += 1
//}
//
//print(counters)
//// Should print (in any order)
//// [ "cat": 3, "dog": 2, "frog": 1 ]
//
//
//var myCountries = ["UK", "France", "Germany", "Spain", "Italy", "Slovenia"] // Put the names of some countries in here
//var countryCount = [String: Int]()
//
//// Program should print a dictionary with each of the letters of the alphabet
//// and the number of countries which begin with that letter.
//// E.g. [ "a": 2, "b": 0, ... ]
//for letter in "abcdefghijklmnopqrstuvwxyz" {
//    countryCount[String(letter)] = 0
//}
//
//for country in myCountries {
//    if let firstLetter = country.first {
//        let letter = String(firstLetter).lowercased()
//        countryCount[letter, default: 0] += 1
//    }
//}
//
//// Sort the keys alphabetically before printing
//let sortedKeys = countryCount.keys.sorted()
//for key in sortedKeys {
//    print("\(key): \(countryCount[key]!)")
//}

//Functions practice
//func greetToo(name: String) -> String {
//  return "Hello, \(name)!"
//}
//print(greetToo(name: "Josué"))
//// Prints: "Hello, Josué!"
// Your code goes here.
//func addFive(num: Int) -> String {
//    return "\(num + 5)"
//}
//print(addFive(num: 4))
//// Should print: "9"
//
//print(addFive(num: 2132))
//// Should print: "2137"
//
//// Your code goes here.
//func subtractLowFromHigh(num1: Int, num2: Int) -> Int {
//    if num1 < num2 {
//        return num2 - num1
//    } else {
//        return num1 - num2
//    }
//}
//print(subtractLowFromHigh(num1: 2, num2: 3))
//// Should print "1"
//
//print(subtractLowFromHigh(num1: 3, num2: 2))
//// Should print "1"
//
//print(addFive(num: subtractLowFromHigh(num1: 1463, num2: 16475)))
//// Should print "15017"
//
//func superify(_ element: String) -> String {
//    return "super\(element)"
//}
//
//print(superify("cat"))
//// Should print:
////"supersupersupersupercat"

//Classes practice
//class Greet {
//  let greeter: String
//
//  init(greeter: String) {
//    self.greeter = greeter
//  }
//
//  func greetAnimals() -> String {
//    return "Hello, lovely creatures!"
//  }
//
//  func greetNumberOfPeople(numberOfPeople: Int) -> String {
//    return "Hello to all \(numberOfPeople) of you!"
//  }
//}
//
//var greet = Greet(greeter: "Josué")
//print(greet.greetAnimals())
//// Prints: "Hello, lovely creatures!"
//
//print(greet.greetNumberOfPeople(numberOfPeople: 6))
//// Prints: "Hello to all 6 of you!"
///
//class Introducer {
//    let name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    func announce() -> String {
//        return "I am \(self.name)"
//    }
//    
//    func introduce(who: String) -> String {
//        return "Hello \(who), I am \(self.name)"
//    }
//}
//
//var introducer = Introducer(name: "Josué")
//
//print(introducer.announce())
//// Should print: "I am Josué!"
//
//print(introducer.introduce(who: "Fred"))
//// Should print: "Hello Fred, I am Josué!"
//
//
//class Reminder {
//    let name: String
//    var task: String
//    
//    init(_ name: String) {
//        self.name = name
//        self.task = "Set a task"
//    }
//    
//    func remindMeTo(_ task: String) {
//        self.task = task
//    }
//    
//    func remind() -> String {
//        return "\(self.name)! \(self.task)!"
//    }
//}
//
//var reminder = Reminder("Josué")
//
//print(reminder.remind())
//
//reminder.remindMeTo("Walk the dog")
//
//print(reminder.remind())
//// Should print: "Josué! Walk the dog!"

////Type annotations practice
//
//// Your implementation here
//class Pet {
//    let name: String
//    let owner: String
//    let likes: [String]
//    let dislikes: [String]
//    let neutral: [String]
//    
//    init(name: String, owner: String, likes: [String], dislikes: [String], neutral: [String]) {
//        self.name = name
//        self.owner = owner
//        self.likes = likes
//        self.dislikes = dislikes
//        self.neutral = neutral
//    }
//    
//    func getInformation(kind: String) -> String? {
//        let lowercaseKind = kind.lowercased()
//        
//        let dictInfo: [String: Any] = [
//            "likes": likes,
//            "dislikes": dislikes,
//            "neutral": neutral,
//        ]
//        
//        if let info = dictInfo[lowercaseKind] {
//            if let infoArray = info as? [String], !infoArray.isEmpty {
//                if infoArray.count == 1 {
//                    return "\(name) \(lowercaseKind) \(infoArray[0])!"
//                } else {
//                    let joinedInfo = infoArray.dropLast().joined(separator: ", ")
//                    let lastInfo = infoArray.last!
//                    return "\(name) \(lowercaseKind) \(joinedInfo) and \(lastInfo)!"
//                }
//            } else {
//                return "\(name) does not like or dislike playing with \(lowercaseKind)!"
//            }
//        } else {
//            return nil
//        }
//    }
//}
//
//
//let black = Pet(
//  name: "Black",
//  owner: "Josué",
//  likes: ["running", "chasing", "singing"],
//  dislikes: ["octopus", "cats"],
//  neutral: ["squirrels"]
//)
//
//black.getInformation(kind: "Likes")
//// Returns: Black likes running, chasing and singing!
//black.getInformation(kind: "Dislikes")
//// Returns: Black dislikes octopus and cats!
//black.getInformation(kind: "Neutral")
//// Returns: Black does not like or dislike playing with squirrels


//Optionals handling
// Write your function here
//Declare an optional string variable to store a pet's nickname.
//var petNickname: String?
////Then, write a function to print a greeting to the pet using their nickname.
////If the nickname is nil, the function should print a default greeting.
//func greet(_ petNickname: String?) -> String {
//    guard let name = petNickname else {
//        return "Your pet doesn't have a name yet."
//    }
//    return "Hello, \(name)!"
//}
//
//print(greet(petNickname))
//
//petNickname = "Geordie"
//
//print(greet(petNickname))

//Challenge: Book Club
//
////You're developing a feature for a book review application where users are required to provide their favourite book's title and can optionally add a description and their personal reason for favouring the book. Write a function that accepts a non-optional title string and two optional strings: description and reason. The function should output a well-formatted message with the available information. Handle the absence of optional details using if let or guard let.
////Function Signature
//func printFavouriteBookDetails(title: String, description: String?, reason: String?) {
//print("\(title),")
//    if let realDescr = description {
//        print("\(realDescr),")
//    } else {
//        print("No description given")
//    }
//    if let realReason = reason {
//        print("\(realReason)")
//    } else {
//        print("No reason given")
//    }
//}
//
//var bookTitle: String = "Hot Milk"
//var bookDescr: String? = "A vibrant and starkly humorous tale of a mother-daughter relationship and the complexities of identity."
//var bookReason: String?/* = "It's a compelling exploration of the human psyche and personal transformation."*/
//
//printFavouriteBookDetails(title: bookTitle, description: bookDescr, reason: bookReason)

//Example Output
//
//If all values are provided:
//
//Title: "Hot Milk"
//Description: "A vibrant and starkly humorous tale of a mother-daughter relationship and the complexities of identity."
//Reason: "It's a compelling exploration of the human psyche and personal transformation."
//
//If reason is not provided:
//
//Title: "Hot Milk"
//Description: "A vibrant and starkly humorous tale of a mother-daughter relationship and the complexities of identity."
