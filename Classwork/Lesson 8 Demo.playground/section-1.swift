// Playground - noun: a place where people can play

import UIKit

protocol Flight {                    //protocols enforce rules for how classes behave
    var wings: Bool { get set }
    var beakSize: Int { get set }
}

protocol Talk {
    func speak() -> String
}

class Penguin: Flight {
    var wings = true
    var beakSize = 6
}

class Human: Animal, Talk {
    func speak() -> String {
        return "Hello world"
    }
}


class Animal {
    var legs: Int
    var fur: Bool = false
    var hasClaws: Bool
    
    init (hasClaws: Bool, legs: Int) {
        self.hasClaws = hasClaws
        self.legs = legs
    }
    
    func speak () {
        println("Hello world")
    }
}

class Dog: Animal {            //inheriting from Animal
    
//    override var fur: Bool {                //syntax for overriding variables
//        get {
//            return super.fur    //returning whatever the var is set as
//        }
//        set {
//            super.fur = newValue        //override the inherited property to the new value set by the sub class
//        }
//    }
//    
//    override func speak() {
//        println("Woof Woof")
//    }
}
    
var dave = Animal(hasClaws: true, legs: 2)
var rover = Dog(hasClaws: true, legs: 4)
rover.speak()
rover.fur = true
rover.legs
var skippy = rover
skippy.legs = 5
rover.legs

var tedi = Penguin()


/*
Structs reference value types like coordinates, height, width. 
Structs make things easy to copy value types from one thing to another. 
Sturcts cannot inherit properties though. 
*/

struct Rectangle {
    var width: Int
    var height: Int
    
    func getArea() -> Int {
        return width * height
    }
}

let myRectangle = Rectangle(width: 50, height: 100)

var myOtherRect = myRectangle
myOtherRect.width = 70
myRectangle.width

myRectangle.getArea()
myOtherRect.getArea()


class House {
    
    struct Door {
        var height: Int
        var width: Int
        var hasNob: Bool
    }

}








