#  Makers Swift FizzBuzz project - Instructions

Objectives

Learn to:

    Set up a new SwiftUI project
    Test-drive in Swift
    Manipulate variables
    Use conditional and looping logic
    Use functions with parameters

Testing in Swift, getting started

Set up a new Xcode project based on the App template.

⚠️ Make sure you select an iOS project and not a Multiplatform one Sometimes by default your Xcode, depending on its version, may want to create a Multiplatform project, but we're not supporting platforms other than iOS as part of this module.

⚠️ Make sure your project name does not contain spaces or hyphens. This could create some underlying issues with Xcode.

⚠️ If you are using Xcode >15, you may be asked to select "Storage" option for your app in a dropdown. Select None, as we do not need this for this week.

Once that is done, you will now see on the left sidebar in Xcode three main directories:

    YourProject
    YourProjectTests
    YourProjectUITests

If you go to the .swift file inside YourProjectTests directory, you will find a bunch of boilerplate code inside the test class. Get rid of the boilerplate code, we won't need it for this exercise.

We want to TDD a feature that allows us to register a new food our pet likes, and we will also verify that we are able to see such food in the list for our pet afterwards.

We'll start off with this initial code in the mentioned test file:


@testable import MyPet
import XCTest

final class YourProjectTests: XCTestCase {
    // This would be our test case
    func testRegisteringFoodAddsToFoodOptions() {
        // Arrange
        let tastyFood = "salmon"
        let pet = Pet()
    }
}

At this point the compiler will complain that there's no such thing as Pet in the scope. And this is how we know we need to stop growing our unit test and do something about this.

Inside YourProject group (not the Tests one!), create a new .swift file named Pet. Then declare a new Pet class in there:


class Pet {

}

And now magically the compilation error we saw before has gone! Well, this is because we have added the Pet class within a scope that the test can read from.

Before we continue, some questions worth reflecting on:

    :question: Why at the top of our test file we include @testable import MyPet?
    :question: And why is it not @testable import Pet instead?

So let's continue and try to add the functionality of registering food for any instance of Pet. Starting with the test we are working on:


    func testRegisteringFoodAddsToFoodOptions() {
        // Arrange
        let tastyFood = "salmon"
        let pet = Pet()

        // Act
        pet.registerFood(food: "salmon") // Error: Value of type 'Pet' has no member 'registerFood'
    }

And now we go through the process of adding the functionality to our Pet.swift file:


class Pet {

    var foodOptions = [String]()

    func registerFood(food: String) {

    }
}

And now the compiler does not show any errors again for our test. So we can continue:


    func testRegisteringFoodAddsToFoodOptions() {
        // Arrange
        let tastyFood = "salmon"
        let pet = Pet()

        // Act
        pet.registerFood(food: "salmon")
        let foodOptions = pet.getFoodOptions()
        // Value of type 'Pet' has no member 'getFoodOptions'
    }

After we define the getFoodOptions function in the main file, the above error disappears.


class Pet {
    var foodOptions = [String]()

    func registerFood(food: String) {

    }

    func getFoodOptions() -> [String] {
        return foodOptions
    }
}

So now we can run our first test in Swift following TDD! To do so, you can simply run Cmd + U, or click on the little play button next to the test class line or the specific test itself (testRegisteringFoodAddsToFoodOptions).

:warning: If you are finding it extremely slow to run your unit tests in Xcode, follow the first recommendation on this article. Implementing that should massively speed up running your tests on Xcode.

After we run the test, you will notice that the test is passing. Why? Well, we are not really running any sort of assertion yet! Let's add it now:


    func testRegisteringFoodAddsToFoodOptions() {
        // Arrange
        let tastyFood = "salmon"
        let pet = Pet()

        // Act
        pet.registerFood(food: "salmon")
        let foodOptions = pet.getFoodOptions()

        // Assert
        XCTAssertTrue(foodOptions.contains(tastyFood))
    }

You will notice that this test is failing. But why? I like to try and predict whether my test is going to pass or not when doing TDD. And then I follow the logic in my implementation class file to verify my assumption. Then I finally run my test.

Tip: Use print to find out more about the state of your program at any given point within your test! You could for instance print what is inside foodOptions after invoking the registerFood function passing Salmon as a parameter.

So after you realise that we haven't actually implemented the logic for our registerFood method in the main file, now we can go ahead and implement the logic for this function, and then the registerFood logic as well. In the end we should end up with something similar to the below:


class Pet {

    var foodOptions = [String]()

    func registerFood(food: String) {
        foodOptions.append(food)
    }

    func getFoodOptions() -> [String] {
        return foodOptions
    }
}

Now after your test passes, you should see a check mark next to it: :white_check_mark:

Now you are equipped with the very fundamentals of writing tests in Swift, so it is time to apply all that you have learned. Head straight to Fizzbuzz!
Demonstration
Watch video: Step 1 (Demo)
Fizzbuzz

Your task is to test-drive a program that takes a max number and returns a string. The string should list out the numbers counting up to and including the given max number, substituting Fizz where the number is divisible by 3, Buzz where it is divisible by 5, and FizzBuzz where it is divisible by both 3 and 5.

Here's an example:

CALLING:
  fizzbuzz(number: 15)
SHOULD RETURN:
  "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"

You're going to test drive this, which will be much easier if you avoid printing to the terminal.
What you'll need to keep learning and researching

Amongst other things, you'll need to keep learning and researching:

    XCTest Official Docs
    Swift functions
    Swift conditions and loops
