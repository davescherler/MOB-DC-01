//
//  FifthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileManager = NSFileManager.defaultManager()
        let arrayPath = NSTemporaryDirectory() + "arrayText.txt"
        
        var fullText: String = self.textView.text
        
        var arrayOfFullText: [String]? = split(fullText) {$0 == " "}
        
        var array: NSArray? = NSArray(array: arrayOfFullText!)
        
        println(arrayOfFullText)
        
        if let arrayExists = array {
            arrayExists.writeToFile(arrayPath, atomically: true)
            println("the arrayText.txt file was written.")
        } else {
            println("No array data is available!")
        }
    }
    
        // Do any additional setup after loading the view.
}
