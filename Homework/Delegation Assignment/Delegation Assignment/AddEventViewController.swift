//
//  ViewController.swift
//  Delegation Assignment
//
//  Created by Dave Scherler on 2/5/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

protocol NewEventInfo {
    func saveEventInfo(newEvent: Event)
}

class AddEventViewController: UIViewController {
    
    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var eventLocation: UITextField!
    
    var delegate: NewEventInfo?
    
    //var eventNameLabel = UITextField(frame: CGRect(x: 20, y: 20, width: self.view.frame.height * 0.05, height: 20))
    //var eventLocationLabel = UITextField(frame: CGRect(x: 40, y: 40, width: self.view.frame.height * 0.05, height: 20))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.Plain, target: self, action: "cancelAddEvent")
        let saveButton = UIBarButtonItem(title: "Save:", style: .Plain, target: self, action: "saveAddEvent")
        
        self.navigationItem.title = "Add Event"
        self.navigationItem.leftBarButtonItem = cancelButton
        self.navigationItem.rightBarButtonItem = saveButton
        
    }
    
    func cancelAddEvent() {
        self.dismissViewControllerAnimated(true, completion: nil)
        }
    
    func saveAddEvnt() {
        let newEvent = Event(name: eventName.text, location: eventLocation.text)
        self.delegate?.saveEventInfo(newEvent)
        cancelAddEvent()
    }
        
        
        // Do any additional setup after loading the view, typically from a nib

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

