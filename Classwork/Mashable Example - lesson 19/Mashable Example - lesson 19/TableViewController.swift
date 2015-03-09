//
//  TableViewController.swift
//  Mashable Example - lesson 19
//
//  Created by Dave Scherler on 3/4/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import Foundation
import UIKit

class UITableViewContoller: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    var mashable: NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = NSURL(string: "http://mashable.com/stories.json") {
        // 2. set the task
        let task = NSURLSession.sharedSession().dataTaskWithURL(url,
            completionHandler: { (data, response, error) -> Void in
                
                //3. convert the json data into normal data
                if let mashDict: AnyObject = NSJSONSerialization.JSONObjectWithData(data,
                    options: nil, error: nil) {
                        // 3a. we make the normal data available outside viewDidLoad
                        self.mashable = mashDict as? NSDictionary
//                        println(mashDict)
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
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let mashData = self.mashable {
            if let data = mashData["new"] as? NSArray {
                    return mashData.count
                }
            }
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        if cell == nil  {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        }
        
        if let mashData = self.mashable {
            if let data = mashData["new"] as? NSArray {
                if let item: AnyObject = data[indexPath.row] as? NSDictionary {
                        if let title = item["title"] as? NSString {
                                cell.textLabel?.text = title
                                println(title)
                            }
                        }
                    }
                }
        
        return cell
    }
    
    //on click
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var url = NSURL(string: "http://tedi.io")
        performSegueWithIdentifier("web", sender: NSURLRequest(URL: url!))
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if let request = sender as? NSURLRequest {
//            var destinationViewController = segue.destinationViewController as WebViewController
//            destinationViewController.request = request
        //}

    
    
    
    
}
