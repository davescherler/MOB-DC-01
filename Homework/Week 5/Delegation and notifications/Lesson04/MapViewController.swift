//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    var dict = [["name":"Dave", "location": "DC"], ["name": "Mike", "location":  "NY"]]
    //var dictionary: [String: String] = ["Dave": "DC"]
    //var dictionaryArray = [dictionary]
    var textBoxOne = UITextField()
    var textBoxTwo = UITextField()
    var dictionaryTableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTextBoxes()
        makeTableView()
        //var arrayOfDict = [dict]
        dictionaryTableView.dataSource = self
        self.dictionaryTableView.reloadData()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "makeTextBoxesBlueNow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "makeTextBoxesRedNow:", name: "makeTextBoxesRed", object: nil)
        
    }
    
    func makeTextBoxesBlueNow (notification: NSNotification) {
        textBoxOne.backgroundColor = UIColor.blueColor()
        textBoxTwo.backgroundColor = UIColor.blueColor()
    }
    
    func makeTextBoxesRedNow (notification: NSNotification){
        textBoxOne.backgroundColor = UIColor.redColor()
        textBoxTwo.backgroundColor = UIColor.redColor()
    }
    
    func makeTextBoxes() {
        //create text box one.
        textBoxOne = UITextField(frame: CGRect(x: self.view.frame.width * 0.05, y: 100, width: self.view.frame.width * 0.9, height: 40))
        textBoxOne.borderStyle = UITextBorderStyle.RoundedRect
        textBoxOne.backgroundColor = UIColor.whiteColor()
        textBoxOne.placeholder = "Enter Your Name"
        textBoxOne.delegate = self
        self.view.addSubview(textBoxOne)
        
        //create text box two.
        textBoxTwo = UITextField(frame: CGRect(x: self.view.frame.width * 0.05, y: 150, width: self.view.frame.width * 0.90, height: 40))
        textBoxTwo.borderStyle = UITextBorderStyle.RoundedRect
        textBoxTwo.backgroundColor = UIColor.whiteColor()
        textBoxTwo.placeholder = "Enter Your Location"
        textBoxTwo.delegate = self
        self.view.addSubview(textBoxTwo)
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        var name = String(self.textBoxOne.text)
        var location = String(self.textBoxTwo.text)
        self.dict.append(["name": name, "location": location])
        println(self.dict)
        println("==========")
        
        
        //dictionaryArray.append([self.textBoxOne.text: self.textBoxTwo.text])
        //dictionaryArray.append([String(self.textBoxOne.text): String(self.textBoxTwo.text)])
        //dictionary["\(self.textBoxOne.text)"] = "\(self.textBoxTwo.text)"
        self.dictionaryTableView.reloadData()

        self.dict.count
        println("\(dict)")
        
        //send a notification to turn boxes red.
        NSNotificationCenter.defaultCenter().postNotificationName("makeTextBoxesRed", object: nil)
        textBoxTwo.resignFirstResponder()
        textBoxOne.text = ""
        textBoxTwo.text = ""
        
        return true
    }

    func makeTableView() {
        self.dictionaryTableView = UITableView(frame: CGRect(x: self.view.frame.width * 0.05, y: 200, width: self.view.frame.width * 0.90, height: self.view.frame.height * 0.75))
        self.dictionaryTableView.delegate = self
        self.dictionaryTableView.dataSource = self
        self.dictionaryTableView.reloadData()
        self.view.addSubview(self.dictionaryTableView)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println("about to count the items in dictionary array")
        println(self.dict.count)
        return self.dict.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        cell.textLabel?.text = self.dict[indexPath.row]["name"]! +  " is from " + self.dict[indexPath.row]["location"]!
            println("about to return cell")
            return cell
       }
    //    tableView
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            self.dict.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            self.dict.count
        }
    }
    
}

        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    

