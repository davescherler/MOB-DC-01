//
//  FourthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileManager = NSFileManager.defaultManager()
        
        let readPath = NSTemporaryDirectory() + "notes.txt"
        
        let readNotes: NSString? = NSString(contentsOfFile: readPath, encoding: NSUTF8StringEncoding, error: nil)
        
        if let notesExist = readNotes {
            self.textView.text = "The current notes file reads:" + "\r\n" + "\r\n" + "\(notesExist)"
        } else {
            println("The notes file is empty!")
        }

        // Do any additional setup after loading the view.
    }
}
