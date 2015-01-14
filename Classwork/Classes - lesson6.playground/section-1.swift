// Playground - noun: a place where people can play

import UIKit

class Animal {
    var numberOfLegs: Int
    var hasFur: Bool
    var Noise = "Moooo"
    
    init(legs: Int, hasFur: Bool) {
        self.numberOfLegs = legs
        self.hasFur = hasFur
    }
    
    func speak() {
        println(self.Noise)
    }
}

var dave = Animal(legs: 2, hasFur: false)
dave.hasFur = false


var ena = Animal(legs: 4, hasFur: true)
ena.hasFur = true
ena.numberOfLegs = 4

dave.speak()

