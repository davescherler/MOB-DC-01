// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myVariable = "Hello, World"
println(myVariable)

var mySecondVariable: String = "hello world, again!"

println(mySecondVariable)

var x:Double = 10

var y:Double = 4

x + y
x * y
x / y
// not getting a remainder because inferred type of variables is an integer
x - y
x % y
10 % 10

y = 20

println(y/2)

x / y

let myName = "Dave"

var amIHere: String?

println(amIHere)

var thirdVariable: Int?

/******************* Control Flow **********************/

var myAge = 25
if(myAge<21){
    println("You can't get in!")
}
else if myAge==21{
    println("Free Drinks")
}
else {
    println("You can party")
}

for var i = 0; i < 5; ++i {
    println("Code is running \(i)")
}

println("Hi, my name is \(myName)")

for index in 1...5 {
    println(index)
}

var k = 1
while k < 10 {
    println("counting")
    ++k;
}









