//
//  ViewController.swift
//  Mashable Example - lesson 19
//
//  Created by Dave Scherler on 3/4/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var mashable: NSDictionary?
        
        if let url = NSURL(string: "http://mashable.com/stories.json") {
            // 2. set the task
            let task = NSURLSession.sharedSession().dataTaskWithURL(url,
                completionHandler: { (data, response, error) -> Void in
                    
                    //3. convert the json data into normal data
                    if let mashDict: AnyObject = NSJSONSerialization.JSONObjectWithData(data,
                        options: nil, error: nil) {
                            // 3a. we make the normal data available outside viewDidLoad
                            self.mashable = mashDict as? NSDictionary
                            println(mashDict)
                    }
                    // 4. move the task to the main thread
                    dispatch_async(dispatch_get_main_queue(),  { () -> Void in
                        self.tableView.reloadData()
                    })
            })
            // 5. resume the task
            task.resume()
        }

        
    }



}

