//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        var valueForSlider = defaults.floatForKey("settings_slider")
        var textInTextField = defaults.stringForKey("settings_string")
        
        println(valueForSlider)
        println(textInTextField)
        
//        let settingsBundle = NSBundle.mainBundle().pathForResource("Settings", ofType: "bundle")
//        
//        var rootPath: AnyObject? = NSBundle.mainBundle().pathForResource("Root", ofType: "plist")
        
        //var arrayOfRootDicts: NSArray? = NSArray(contentsOfFile: rootPath)
        
        
//        
//
//        
//        if let unwrappedArray = arrayOfRootDicts {
//            println(unwrappedArray)
//        } else {
//            println("Could not load plist info!")
//        }

    }
}
