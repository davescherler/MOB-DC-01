//
//  ViewController.swift
//  Flat File Practice - lesson 17
//
//  Created by Dave Scherler on 2/25/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveText(sender: UIButton) {
        
        var fileManager = NSFileManager()
        var path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        if path.count > 0 {
            var documentsPath = path[0].relativePath! as String
            var mySavedPath = documentsPath + "/notes.text"
            println(mySavedPath)
            
            var textToSave = self.textField.text
            textToSave.writeToFile(mySavedPath, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
            
        } else {
            println("Could not save")
    
    }
    }
    
    @IBAction func loadTextData(sender: UIButton) {
        
        var fileManager = NSFileManager()
        var path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        var documentsPath = path[0].relativePath!
        var mySavedPath = path[0].relativePath! + "notes.text"
        
        if path.count > 0 {
            var documentsPath = path[0].relativePath! as String
            var mySavedPath = documentsPath + "/notes.text"
            println(mySavedPath)
            
            var textToLoad: NSString? = NSString(contentsOfFile: mySavedPath, encoding: NSUTF32StringEncoding, error: nil)
            println(textToLoad)
            
            if let loadedContent = textToLoad {
                println("Content loaded! Content is : \(loadedContent)")
            } else {
                println("Could not load")
            }
            
        } else {
            println("Could not save")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

