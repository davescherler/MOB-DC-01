//
//  Animal.swift
//  Classes Examples - Lesson7
//
//  Created by Dave Scherler on 1/14/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved./Users/Dave/MOB-DC-01/Classwork/Classes Examples - Lesson7/Classes Examples - Lesson7/ViewController.swift
//

import Foundation

class Animal {
    var species: String = ""
    var name: String = ""
    
    func stringRepresentation() -> String {
        return "The animal is \(self.species), and its name is \(self.name)"
    }
}