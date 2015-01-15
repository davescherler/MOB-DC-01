// Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var wheels = 0
    var name:String = ""
    var color:String = "green"
    var numOfSeats = 0
    var numOfAxels = 0
    
    func go() {                 //normal method
        println("Vroom Vroom")
    }
    
    func inspectCar(){          //normal method
        println("this car has \(self.numOfSeats) seats and \(self.numOfAxels) axels")
    }
    
    class func aboutVehicle() {        //'class method.' this is different from the normal method.
        println("Cars are awesome")
    }
}

var myCar = Vehicle()
myCar.wheels = 4
myCar.name = "Car"
myCar.color = "green"
myCar.numOfAxels = 2
myCar.numOfSeats = 4

myCar.inspectCar()
Vehicle.aboutVehicle()

