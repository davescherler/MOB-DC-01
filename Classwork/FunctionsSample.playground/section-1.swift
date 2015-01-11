// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func hello() {
    println("hello, world")
}

hello()
hello()
hello()

func sum(firstNum: Int, secondNum: Int) -> Int {
    let newSum = firstNum + secondNum
    return newSum
}

sum(10, 20)

var x = sum(10,20)
var y = sum(x, 15)

func fibonacci(#place: Int) -> Int {
    var fibNum = place, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        
        let tempVar = current //current = 3
                            //tempVarbecomes 3
        
        current = next   //current becomes next (5)
        next = tempVar + current  //next value becomes old current + new current
        result = tempVar
    }
    return result
}

//hashtag creates an easier way to enter the parameter when calling the func


fibonacci(place: 9)

var num: Int? = 5
if let numValue = num {
    println(numValue + 5)  //best way to unwrap optionals
}

func save (name: String) -> (first: String, last: String) {
    var firstName = name
    var lastName = "Scherler"
    return (firstName, lastName)
}

var myName = save("Dave")
myName.first
myName.last
















