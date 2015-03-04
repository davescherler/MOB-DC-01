//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let fileManager = NSFileManager.defaultManager()
        println("about to create note file")
        
        let notesPath = NSTemporaryDirectory() + "notes.txt"
        
        let notes: NSString = self.textView.text
        
        if notes != "" {
            notes.writeToFile(notesPath, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
            println("The note file currently reads:" + "\r\n" + "\r\n" + "\(notes)")
        } else {
            println("No notes exist!")
        }
            var destinationViewController = segue.destinationViewController as FourthViewController
//            performSegueWithIdentifier("goToFourth", sender: AnyObject?.self)

    }
}
