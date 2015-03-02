//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject("test strings", forKey: "strings")
        defaults.setObject("test numbers", forKey: "numbers")
        
        let strings = defaults.objectForKey("strings") as String
        println(strings)
    }
}