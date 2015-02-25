//
//  MathStuff.swift
//  Midterm Calculator
//
//  Created by Dave Scherler on 2/24/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import Foundation

class MathStuff {
    class func add(displayTotal: Double, previousVal: Double) -> Double {
        var sum = displayTotal + previousVal
        return sum
    }
    
    //solve much performs all the actual math, based on which bool is true.
    class func solve(operation: String, displayText: String, subtotal: Double) -> String {
        if operation == "adding" {
            var result = self.add(NSString(string: displayText).doubleValue, previousVal: subtotal)
            println("result is \(result)")
            return "\(result)"
        } else if operation == "subtracting" {
            var currentDisplayNumberDouble = NSString(string: displayText).doubleValue
            println("The display number double stored as \(currentDisplayNumberDouble)")
            var result = subtotal - currentDisplayNumberDouble
            var resultString = result.description
            println("\(subtotal)")
            return resultString
        } else if operation == "multiplying" {
            var currentDisplayNumberDouble = NSString(string: displayText).doubleValue
            println("The display number double stored as \(currentDisplayNumberDouble)")
            var result = subtotal * currentDisplayNumberDouble
            var resultString = result.description
            return resultString
        } else if operation == "dividing" {
            var currentDisplayNumberDouble = NSString(string: displayText).doubleValue
            println("The display number double stored as \(currentDisplayNumberDouble)")
            var result = subtotal / currentDisplayNumberDouble
            var resultString = result.description
            println("\(subtotal)")
            return resultString
        } else {
            return "0.00"
        }
    }
}