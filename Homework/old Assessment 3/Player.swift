//
//  Player.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation

class Player {
    
    var name: String
    var startingScore: Int = 0  // starting score
    
    init (enterName: String) {    //initalize (ask) for the player name
        self.name = enterName
    }
 }