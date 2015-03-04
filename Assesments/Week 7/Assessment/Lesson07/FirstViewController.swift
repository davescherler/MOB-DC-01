//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        
        var testString = defaults.objectForKey("test_string") as? NSString as? String
        
        var testFloat = defaults.objectForKey("test_number") as? Float
        
        //testString != nil ? self.textView.text = "This formula works." : self.textView.text = "This doens't work."
        
        if let stringUnwrapped = testString {
            if let floatUnwrapped = testFloat {
                self.textView.text = "The String Data is:  \(stringUnwrapped)." +
                "\r\n" +
                "\r\n" +
                "The Integer Data is: \(floatUnwrapped)."
            } else {
                self.textView.text = "The String Data is:  \(stringUnwrapped). The Integer Data could not be found!"
            }} else {
                self.textView.text = "Could Not Find String or Integer Data!"
        }
    }
}