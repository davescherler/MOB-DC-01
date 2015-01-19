//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var enterNumber: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func calculate(sender: AnyObject) {
        displayLabel.text = isEven()
    }
    
    
    func isEven () -> String {
        var number = enterNumber.text.toInt()!
        
        if number % 2 == 0 {
            return "That's an even number!"
        } else {
            return "That's an odd number!"
        }
    }
    
    /*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
}
