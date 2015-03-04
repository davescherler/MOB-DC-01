//
//  ViewController.swift
//  Networking Examples - Lesson 18
//
//  Created by Dave Scherler on 3/2/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://g.com")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
            println("foo")
            
            // Pass our NS data return as a string
            
            var stringData = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            // UI updates need to happen on the main thread. By default NSURLSession connections happen as  a side thread, so we have to access our main thread to update our views.
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
            
            // Update our text view with the stringData var
                self.textView.text = stringData
            })
        })
        task.resume()
    }
}

