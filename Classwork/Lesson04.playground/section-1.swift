// Lesson 04 playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.

var name: String = "Dave"

var age: Int = 28

// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"

println("Hello, \(name), you are \(age), years old!")

// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

if (age > 18) {
    println("You can vote.")
}
    
if (age > 21) {
    println("You can drink")
}

if (age > 16) {
println("You can drive")
}


// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

if (age > 16 && age < 18) {
    println("You can drive and vote.")
} else if (age > 18 && age < 21) {
    println("You can drive and vote.")
} else {
    println("You can drive, vote and drink (but not at the same time!")
}


// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

//for var i = 7; i < 1000;
for index in 1...50 {
    println(7*index-1)
}


// TODO: Create a constant called number

let number = 1

// TODO: Print whether the above number is even

number % number

if (number % number == 0){
    println("the number is even")
} else {
    println("the nunber is odd")
}

// TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below

var fibNum = 9, currentValue = 0, nextValue = 1, result = 0

for index in 0..<fibNum {
    //currentValue = 3
    //tempVar = becomes 3
    let tempVar = currentValue
    //currentValue becomes next (5)
    currentValue = nextValue
    //next value becomes old currentValue + new currentValue
    nextValue = tempVar + currentValue
    result = tempVar
}
println("Fib number is \(result)")

// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

println("Hello \(name), your name is \(countElements(name)) characters long!")


// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

var sum = 0
for i in 1...100 {
    sum += Int(rand())
}
println(sum)


// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

let fizz = 3
let buzz = 5

for var i = 1; i <= 100; ++i {
    if ((i % fizz) == 0 && (i % buzz) == 0) {
        println("FizzBuzz")
    } else if (i % fizz) == 0 {
        println("Fizz")
    } else if (i % buzz) == 0 {
        println("Buzz")
    } else {
        println("Number \(i)")
    }
}
