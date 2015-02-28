//
//  ViewController.swift
//  Flat Files - Lesson 17
//
//  Created by Dave Scherler on 2/25/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBAction func loadData(sender: UIButton) {
        var textPath = NSTemporaryDirectory() + "hello.text"
        
        var stringToLoad: NSString? = NSString(contentsOfFile: textPath, encoding: NSUTF32StringEncoding, error: nil)
        
        if let loadedContent = stringToLoad {
            println("Content loaded! Content is \(loadedContent)")
        } else {
            println("Could not load!")
        }
        
    }
    
    @IBOutlet weak var textView: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //1. create a path, and identify a file to write to
        var tempPath = NSTemporaryDirectory() + "hello.text"
        println(tempPath)
        //2. the content that will be saved
        var stringToSave = self.textView.text
        //3. write the content to the file using the path defined in step 1.
        stringToSave.writeToFile(tempPath, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
        
        
        var fileManager = NSFileManager()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

