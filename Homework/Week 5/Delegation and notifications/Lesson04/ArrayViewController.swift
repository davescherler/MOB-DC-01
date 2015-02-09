//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit


class ArrayViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var enterFoodTextBox: UITextField!
    @IBOutlet weak var foodTable: UITableView!
    
   
    var foodArray = ["pizza", "hamburger", "falafel"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //makeTextField()
        
        //var tableView = UITableView(frame: CGRect(x: self.view.frame.width * 0.05, y: 200, width: self.view.frame.width * 0.9, height: 200))
        //self.view.addSubview(tableView)
        
        self.view.addSubview(foodTable)
        enterFoodTextBox.delegate = self
        foodTable.delegate = self
        foodTable.dataSource = self
        self.foodTable.reloadData()
    }
    /*
    func makeTextField() {
        let textField = UITextField(frame: CGRect(x: 40, y: 100, width: 200, height: 30))
        textField.placeholder = "Foo"
        textField.backgroundColor = UIColor.whiteColor()
        textField.borderStyle = UITextBorderStyle.RoundedRect
        textField.delegate = self
        self.view.addSubview(textField)
    }*/
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        var newFoodText: String = String(enterFoodTextBox.text)
        foodArray.append(newFoodText)
        enterFoodTextBox.resignFirstResponder()
        enterFoodTextBox.text = ""
        println("\(foodArray)")
        self.foodTable.reloadData()

        return true
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println("about to count the items in array")
        println(self.foodArray.count)
        return self.foodArray.count
        
    }
    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        println("about the define cell")
//        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
//        cell.textLabel?.text = self.foodArray[indexPath.row]
//        println("about to return cell")
//        return cell
//    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("foodCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = self.foodArray[indexPath.row]
        
        return cell
    }
    
//    tableView
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            self.foodArray.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            self.foodArray.count
        }
    }
    
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */

}

/*
@tedi, @thomas - how can I tie this text field I created programmatically???

var enterTextBox = UITextField(frame: CGRect(x: self.view.frame.width * 0.05, y: 100, width: self.view.frame.width * 0.9, height: 40))
enterTextBox.backgroundColor = UIColor.whiteColor()
enterTextBox.borderStyle = UITextBorderStyle.RoundedRect
enterTextBox.placeholder = "Enter a favorite food"
enterTextBox.delegate = self
self.view.addSubview(enterTextBox)
*/
