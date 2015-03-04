
//
//  SixthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileManager = NSFileManager.defaultManager()
        
        let path = NSTemporaryDirectory() + "arrayText.txt"
        
        var readFromPath: NSArray = NSArray(contentsOfFile: path)!
        
        var stringVersion = readFromPath.componentsJoinedByString(" ")
            self.textView.text = "\(stringVersion)" + "\r\n" + "\r\n" + "This is sixth TODO and it's complete!"
    }
}
