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
    var score: Int = 0  // starting score
    var scoreAfterHit = 0 //
    
    init (enterName: String) {    //initalize (ask) for the player name
        self.name = enterName
    }
}

