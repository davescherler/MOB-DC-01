//
//  MathStuff.swift
//  Midterm Calculator
//
//  Created by Dave Scherler on 2/24/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import Foundation

class MathStuff {
    class func add(currentDisplayValue: Double, subtotal: Double) -> Double {
        var sum = currentDisplayValue + subtotal
        return sum
    }
    
    class func subtract(currentDisplayValue: Double, subtotal: Double) -> Double {
        
        return subtotal != 0 ? subtotal - currentDisplayValue : currentDisplayValue - subtotal
    }
    
    class func multiply(currentDisplayValue: Double, subtotal: Double) -> Double {
        
        return subtotal != 0 ? currentDisplayValue * subtotal : currentDisplayValue
    }
    
    class func divide(currentDisplayValue: Double, subtotal: Double) -> Double {
            return subtotal != 0 ? (subtotal / currentDisplayValue) : currentDisplayValue
        }
    
    class func percentage(currentDisplayValue: Double) -> Double {
        
        return currentDisplayValue * (1/100)
    }
    
    class func negative(currentDisplayValue: Double) -> Double {
        
        return currentDisplayValue * -1
    }
    
    //after i do the conversions in the VC, change the parameters to only pass doubles (not strings)
    class func solve(operation: String, displayValue: Double, subtotal: Double) -> Double {
        if operation == "adding" {
            var result = self.add(displayValue, subtotal: subtotal)
            println("adding result is \(result)")
            return result
            
        } else if operation == "subtracting" {
            var result = self.subtract(displayValue, subtotal: subtotal)
            println("subracting result is \(result)")
            return result
            
        } else if operation == "multiplying" {
            
            var result = self.multiply(displayValue, subtotal: subtotal)
            println("multipling result is \(result)")
            return result
            
        } else if operation == "dividing" {
            var result = self.divide(displayValue, subtotal: subtotal)
            println("dividing result is \(result)")
            return result
            
        } else {
            return 0.00
        }
    }
}