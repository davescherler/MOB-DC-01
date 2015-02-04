//
//  AddViewController.swift
//  Table view demo
//
//  Created by Tedi Konda on 1/28/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBAction func pressPostButton(sender: AnyObject) {
        //first step in setting notification
        NSNotificationCenter.defaultCenter().postNotificationName("unhideHiddenLabels", object: nil)
    }
    @IBOutlet weak var hiddenLabel: UILabel!
    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var addTextBox: UITextField!
    
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTextBox.delegate = self
        self.errorMessage.hidden = true
        self.hiddenLabel.hidden = true
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "unhideCurrentLabels:",
            name: "unhideHiddenLabels",
            object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "textHasChanged:",
            name: UITextFieldTextDidChangeNotification,
            object: nil)
    }
    
    func textHasChanged(notification: NSNotification) {
        println("hooray, test has changed!")
    }
    
    func unhideCurrentLabels(notification: NSNotification) {
        self.hiddenLabel.hidden = false
        println("triggered unhideHiddenLabels notification")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if self.addTextBox.text.isEmpty {
            println("Your text field is empty, enter something!")
            addTextBox.resignFirstResponder()
            self.errorMessage.hidden = false
        } else {
            self.errorMessage.hidden = true
            addTextBox.resignFirstResponder()
        }
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
