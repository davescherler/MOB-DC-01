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

var fibonacci = [0, 1, 1, 2, 3, 5]

for index in 0...37 {
    println((index-1)+(index-2))
}

/*for var i = 0; i < 38; ++i {
    var a = i-1
    var b = i-2
    var sum = a+b
    println(sum)
} */

for var a = 0; a < 38; ++a {
    var b = a-1
}

for var c = 1; c < 38; ++c {
    var d = c-2
}

for index in 0...37 {
    if (index == 0) {
    var index = 0
    } else if (index == 1) {
    var index = 1
    } else {
    index = (index-1)+(index-2)
    }
    println(index)
}








// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.
