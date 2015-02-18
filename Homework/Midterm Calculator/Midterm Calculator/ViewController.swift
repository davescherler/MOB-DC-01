//
//  ViewController.swift
//  Midterm Calculator
//
//  Created by Dave Scherler on 2/16/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var adding: Bool = false
    var subtracting: Bool = false
    var subtotal: Int = 0
    var total: Int = 0
    var displayNumber = ""
    
    func updateDisplay(value: Int?) -> String {
        var valueString = String(value!)
        
        if self.display.text == "0.00" {
            return valueString
        } else {
            self.displayNumber = "\(self.display.text!)" + "\(valueString)"
            return displayNumber
        }
    }
    
    func add(notification: NSNotification) {
        self.adding = true
        self.subtotal = self.display.text!.toInt()!
        println("\(self.subtotal)")
        self.display.text = "0.00"
        println("\(self.displayNumber)")
    }
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func zeroButton(sender: AnyObject) {
        var value = 0
        self.display.text = String(updateDisplay(value))
    }
    
    @IBAction func oneButton(sender: AnyObject) {
        var value = 1
        self.display.text = updateDisplay(value)
    }
    
    @IBAction func twoButton(sender: AnyObject) {
        var value = 2
        self.display.text = updateDisplay(value)
    }
    
    @IBAction func threeButton(sender: AnyObject) {
        var value = 3
        self.display.text = updateDisplay(value)
    }
   
    @IBAction func fourButton(sender: AnyObject) {
        var value = 4
        self.display.text = updateDisplay(value)
    }
   
    @IBAction func fiveButton(sender: AnyObject) {
        var value = 5
        self.display.text = updateDisplay(value)
    }

    @IBAction func sixButton(sender: AnyObject) {
        var value = 6
        self.display.text = updateDisplay(value)
    }
    
    @IBAction func sevenButton(sender: AnyObject) {
        var value = 7
        self.display.text = updateDisplay(value)
    }
    
    @IBAction func eightButton(sender: AnyObject) {
        var value = 8
        self.display.text = updateDisplay(value)
    }
    
    @IBAction func nineButton(sender: AnyObject) {
        var value = 9
        self.display.text = updateDisplay(value)
    }
    
    @IBAction func decimalButton(sender: AnyObject) {
        var value = "."
        
        func insertDecimal(value: String) -> String {
            
            if self.display.text == "0.00" {
                return displayNumber
            } else {
                self.displayNumber = "\(self.display.text!)" + "\(value)"
                return displayNumber
            }
        }
        self.display.text = insertDecimal(value)
    }

    @IBAction func plusButton(sender: AnyObject) {
        println("sending notifciation message: plusButtonPressed")
        NSNotificationCenter.defaultCenter().postNotificationName("plusButtonPressed", object: nil)
        
//        println("storing the display text as the subtotal")
//        self.subtotal = self.display.text!
//        println("\(self.subtotal)")
//        self.displayNumber = "0.00"
//        println("\(self.displayNumber)")
        
        }
    
    @IBAction func equalsButton(sender: AnyObject) {
        
        func solve() -> String {
            if adding == true {
                var displayNumberInt = self.display.text!.toInt()!
                var result = self.subtotal + displayNumberInt
                var resultString = String(result)
                return resultString
            } else {
            return "nothing"
        }
        }
        self.display.text = solve()
    }
    
      
    
    @IBAction func allClear(sender: AnyObject) {
        self.total = 0
        self.displayNumber = "0.00"
        self.display.text = self.displayNumber
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayNumber = "0.00"
        self.display.text = self.displayNumber
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "add:", name: "plusButtonPressed", object: nil)
    }
    
}


