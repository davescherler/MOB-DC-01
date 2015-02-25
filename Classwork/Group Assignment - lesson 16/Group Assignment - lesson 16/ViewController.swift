//
//  ViewController.swift
//  Group Assignment - lesson 16
//
//  Created by Dave Scherler on 2/23/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var athletesTable: UITableView!
    var athleteNames: [String] = []
    var coachesArray = NSArray()
    
    @IBOutlet weak var coachesTable: UITableView!
    
    override
    func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        
        self.athleteNames = defaults.objectForKey("athletes") as NSArray as Array
        
        self.athletesTable.delegate = self
        self.athletesTable.dataSource = self
        self.coachesTable.delegate = self
        self.coachesTable.dataSource = self
        
        println("\(self.athleteNames)")
        
        var coachesPath = NSBundle.mainBundle().pathForResource("Coaches", ofType: "plist")
        coachesArray = NSArray(contentsOfFile: coachesPath!)!
        println(coachesArray)
        
//        self.coachesArray = [coaches] as Array
    }

    // (x > y) ? DO SOMETHING : DO SOMETHING DIFFERENT
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    /*
    6. Return the array size under the tableView that has the numberOfRowsInSection paremeter. Ex: */
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (tableView == self.athletesTable) ? self.athleteNames.count : self.coachesArray.count
    }
    /*
    7. Update the tableView method with the cellForRowIndexPath paremeter to update all the cells with the array data. ex:
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        // Sets each cell to equal each item in the array
        
        if tableView == self.athletesTable {
            cell.textLabel?.text = self.athleteNames[indexPath.row]
        } else {
            cell.textLabel?.text = self.coachesArray[indexPath.row]["Name"] as? NSString
        }
        return cell
        
    }
    
    // 8. Removing table cell:
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.athleteNames.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }


}

