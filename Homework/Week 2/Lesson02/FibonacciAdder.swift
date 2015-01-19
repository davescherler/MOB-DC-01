//
//  HelloWorld.swift
//  Lesson02
//
//  Created by Dave Scherler on 1/18/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class FibonacciAdder {
    
    var fibNum = 9
  
    func fibonacciNumberAtIndex (#fibNum: Int) -> Int {
        var currentValue = 0, nextValue = 1, result = 0
        
        for index in 0..<fibNum {
            let tempVar = currentValue
            currentValue = nextValue
            nextValue = tempVar + currentValue
            result = tempVar
        }
        return result
    }
    
}
    

