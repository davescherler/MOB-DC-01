// Playground - noun: a place where people can play

import UIKit

var myArray = [1, 4, 10, 15, 20] //inferring the array is made up of Ints

var secondArray: [Int] = [] //explicitly defined this an array of Ints

var stringArray: [String] = []

myArray[2]

myArray.first

myArray.last

secondArray.append(20) //how to add an element to your array
secondArray

myArray.insert(100, atIndex: 2)
myArray.count
myArray.insert(75, atIndex: (myArray.count)-1)
myArray.isEmpty
stringArray.isEmpty

var newIntArray: [Int] = [110, 120, 130, 140, 150]

myArray.removeAtIndex(2)

for i in myArray {
    println("the value of i is \(i)")
}



var sumOfArrays = myArray + newIntArray


