//
//  NewFood.swift
//  Lesson04
//
//  Created by Dave Scherler on 2/6/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class NewFood {
    
    var newFood: String? = ""
    var result: String = ""
    
    func addFavoriteFood() -> String {
        result = String(newFood!)
        return result
    }
}