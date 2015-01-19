//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var enterNumber: UITextField!
    @IBOutlet weak var displaySum: UILabel!
    @IBAction func add(sender: AnyObject) {
        displaySum.text = addNumbers()
    }
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    var currentValue = 0, nextValue = 0, result = 0
    
    func addNumbers() -> String {
        var tempValue =  currentValue
        var number = enterNumber.text.toInt()!
        var nextValue = tempValue + number
        tempValue = nextValue
        result += tempValue
        let resultText = String(result)
        return resultText
    }
    
}
