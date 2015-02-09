//
//  ViewController.swift
//  iOS Delegates - lesson 11
//
//  Created by Dave Scherler on 2/2/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {  //here, we associat the VC with the tableview properties
    
    var gaCampuses = ["DC", "NY", "MD", "LA"]  //array for the various campus locations
    //var gaCampuses: [String] = []
    
    @IBOutlet weak var stuffTextField: UITextField!
    @IBOutlet weak var campusesTable: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //Add delegate for text field: 
        //1. add UITextFieldDelegate Protocol
        //2. connect Text field outlet
        //3. tie textfield.delegate = self
        //4. Add the test field method
        
        if gaCampuses.isEmpty {
            println("Your Table View is Empty")
            campusesTable.hidden = true
        }
        
        stuffTextField.delegate = self //establishing the delegate
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println("return key pressed!")
        stuffTextField.resignFirstResponder() //hides keyboard
        return true
    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gaCampuses.count
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        
        cell.textLabel?.text = self.gaCampuses[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.lightGrayColor()
            cell.textLabel?.textColor = UIColor.whiteColor()
        } else {
            cell.backgroundColor = UIColor.whiteColor()
        }
        
        return cell
    }
    
     func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            self.gaCampuses.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            gaCampuses.count
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

