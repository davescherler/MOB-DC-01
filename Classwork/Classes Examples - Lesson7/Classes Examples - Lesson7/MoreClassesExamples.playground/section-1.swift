// Playground - noun: a place where people can play

import Foundation
import UIKit

var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))

view.backgroundColor = UIColor.purpleColor()
//background color is an object property
//UIColor purpleColor is a class method

class Animal {
    var species: String = ""
    var name: String
    var legs: Int
    init(legs: Int, name: String) {
        self.legs = legs
        self.name = name
    }
    
    func speak() {
        print("AHHH")
    }
}

class Dog: Animal {  //dog is inheriting the class Animal
    var isSmart = true
    override func speak() {
        println("woof!")
    }
    
}

var doggie = Dog(legs: 4, name: "Frank")
doggie.legs
doggie.speak()
doggie.name
doggie.legs


/*func printAnimalName(animal: Animal) { //we're passing an object as a parameter
    println("The animal's name is \(animal.name)")
}

var doggie = Animal()  //define this var as the type of class
doggie.name = "Ena"
printAnimalName(doggie)
*/

