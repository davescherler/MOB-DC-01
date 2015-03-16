//
//  ViewController.swift
//  Whisper App Example - lesson 21
//
//  Created by Dave Scherler on 3/11/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var whisper: UITextView!
    @IBOutlet weak var whisperCategory: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveWhisper(sender: UIButton) {
        var whisperParse = PFObject(className: "Whisper")
        whisperParse["whisper"] = self.whisper.text
        whisperParse["user"] = "Laura"
        whisperParse["category"] = self.whisperCategory.text
        whisperParse.saveInBackgroundWithBlock { (success: Bool, error: NSError!) -> Void in
            if(success) {
                println(whisperParse.objectId)
                println("Whisper saved successfully!")
                self.whisper.text = ""
                self.whisperCategory.text = ""
            } else {
                println(error.description)
            }
        }
    }
    @IBAction func readWhispers(sender: UIButton) {
        var whisperQuery = PFQuery(className: "Whisper")
        whisperQuery.whereKey("category", equalTo: self.whisperCategory.text)
        whisperQuery.findObjectsInBackgroundWithBlock { (whisperObjects: [AnyObject]!, error: NSError!) -> Void in
            for whisper in whisperObjects {
                if let whisperTitle: AnyObject? = whisper["whisper"] {
                    println(whisperTitle)
                }
            }
        }
    }

}
