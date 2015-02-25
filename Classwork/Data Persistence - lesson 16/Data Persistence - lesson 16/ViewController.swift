//
//  ViewController.swift
//  Data Persistence - lesson 16
//
//  Created by Dave Scherler on 2/23/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setObject("light", forKey: "theme")
        
        let theme = defaults.objectForKey("theme") as String
        println(theme)
        
        if theme == "dark" {
            self.view.backgroundColor = UIColor.blackColor()
            self.helloWorldLabel.textColor = UIColor.whiteColor()
        } else {
            self.view.backgroundColor = UIColor.whiteColor()
            self.helloWorldLabel.textColor = UIColor.blackColor()
        }
        
        
        //to get the contents of our propery list (.plist file)
        //1. set the path ... NSBundle.mainBundle().pathForResource
        //2. read the contents of the file ... NSArray(contentsOfFile)
        //2b. to write contents to the file ... NSMutableArray(contentsOfFile)
        var booksPath = NSBundle.mainBundle().pathForResource("Books", ofType: "plist")
        var books = NSMutableArray(contentsOfFile: booksPath!)
        
        books![0].setValue("Ena's World 2", forKey: "Title")
        books!.writeToFile(booksPath!, atomically: true)
        
        println(books!)
        
//        println("\(books!)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

