//
//  ViewController.swift
//  Midterm Calculator
//  Created by Dave Scherler on 2/16/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activeButton: UIButton? = nil //var for tracking which button was pressed most recently
    var memoryAddButton = UIButton()
    var memoryRecallButton = UIButton()
    var memoryClearButton = UIButton()
    var numbersToCalc = [0.0, 0.0]
    var memorySubtotal: Double = 0.00
    var operation: String = ""
    var percentage: Bool = false
    var negative: Bool = false   //bools for telling solve func which operation is happening
    var subtotal: Double = 0.00  //var for storing number entered and doing actual math
    
    func updateDisplay(value: Character) -> String {
        let displayDouble = NSString(string: self.display.text!).doubleValue
        if self.display.text == "0.00" || displayDouble == self.subtotal {
            return "\(value)"
        } else {
            return self.display.text! + [value]
        }
    }
    
    func makeActiveButton(sender: UIButton) {
        self.activeButton?.backgroundColor = UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0)
        self.activeButton?.titleLabel?.textColor = UIColor.whiteColor()
        sender.backgroundColor = UIColor.blackColor()
        sender.setTitleColor(UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0), forState: UIControlState.Normal)
        self.activeButton = sender
    }
    
    func resetActiveButtonState(sender: UIButton) {
        self.activeButton?.backgroundColor = UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0)
        self.activeButton?.titleLabel?.textColor = UIColor.whiteColor()
        self.activeButton = nil
    }
    
    @IBAction func showMemoryButtons(sender: UISwipeGestureRecognizer) {
        println("swipe down")
        
        if activeButton == nil {
           makeOperationButtonTextWhite()
        } else { }

        self.acVerticalSpaceToDisplay.constant = self.display.frame.height - 100

        UIView.animateWithDuration(0.5, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    func memoryAddButtonPressed(sender: UIButton) {
        self.memorySubtotal = NSString(string: self.display.text!).doubleValue
        self.memoryLabelOutlet.hidden = false
        self.memoryLabelOutlet.text = "M = \(self.memorySubtotal.description)"
        println("The memory value is \(self.memorySubtotal)")
    }
    
    func memoryRecallButtonPressed(sender: UIButton) {
        self.display.text = self.memorySubtotal.description
    }
    
    func memoryClearButtonPressed(sender: UIButton) {
        self.memorySubtotal = 0.00
        self.memoryLabelOutlet.text = ""
        self.memoryLabelOutlet.hidden = true
    }

    @IBAction func hideMemoryButtons(sender: UISwipeGestureRecognizer) {
        println("swipe up")
        println("the activeButton is \(self.activeButton)")
        self.displayLabelHeightConstraint.constant = 170
        self.acVerticalSpaceToDisplay.constant = 5
        self.memoryAddButton.removeFromSuperview()
        self.memoryRecallButton.removeFromSuperview()
        self.memoryClearButton.removeFromSuperview()
        
        UIView.animateWithDuration(0.5, animations: {
            self.view.layoutIfNeeded()
        })
        
        if activeButton == nil {
            makeOperationButtonTextWhite()
        } else { }
    }
    
    
    @IBOutlet weak var display: UILabel!
    
    // assigning values to each numeric button, then running that value thru the update display func
    @IBAction func zeroButton(sender: AnyObject) {
        let value: Character = "0"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func oneButton(sender: AnyObject) {
        let value: Character = "1"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func twoButton(sender: AnyObject) {
        let value: Character = "2"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func threeButton(sender: AnyObject) {
        let value: Character = "3"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
   
    @IBAction func fourButton(sender: AnyObject) {
        let value: Character = "4"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
   
    @IBAction func fiveButton(sender: AnyObject) {
        let value: Character = "5"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }

    @IBAction func sixButton(sender: AnyObject) {
        let value: Character = "6"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func sevenButton(sender: AnyObject) {
        let value: Character = "7"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func eightButton(sender: AnyObject) {
        let value: Character = "8"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func nineButton(sender: AnyObject) {
        let value: Character = "9"
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func decimalButton(sender: AnyObject) {
        let value: Character = "."
        
        func insertDecimal(value: Character) -> String {
        
        if self.display.text == "0.00" || self.display.text?.hasSuffix(".") == true {
            return self.display.text!
            } else {
            return self.display.text! + [value]
            }
        }
        self.display.text = insertDecimal(value)
    }

    // plus button - sends notification and changes color to black when pressed.
    @IBAction func plusButton(sender: UIButton) {
        
        self.operation = "adding"
        let convertedDisplayDouble = NSString(string: self.display.text!).doubleValue
        let sum = MathStuff.add(convertedDisplayDouble, subtotal: self.subtotal)
        self.subtotal = sum
        self.display.text = "\(sum)"
        makeActiveButton(sender)
    }
    
    // minus button - sends notification and changes color to black when pressed.
    @IBAction func minusButton(sender: UIButton) {
       
        self.operation = "subtracting"
        let convertedDisplayDouble = NSString(string: self.display.text!).doubleValue
        let remainder = MathStuff.subtract(convertedDisplayDouble, subtotal: self.subtotal)
        self.subtotal = remainder
        self.display.text = "\(remainder)"
        makeActiveButton(sender)
    }
    // multiply button - sends notification and changes color to black when pressed.
    @IBAction func multiplyButton(sender: UIButton) {
        
        self.operation = "multiplying"
        let convertedDisplayDouble = NSString(string: self.display.text!).doubleValue
        let product = MathStuff.multiply(convertedDisplayDouble, subtotal: self.subtotal)
        println("\(product)")
        self.subtotal = product
        self.display.text = "\(product)"
        makeActiveButton(sender)
    }
    // divide button - sends notification and changes color to black when pressed.
    @IBAction func divideButton(sender: UIButton) {
 
        self.operation = "dividing"
        let convertedDisplayDouble = NSString(string: self.display.text!).doubleValue
        let dividend = MathStuff.divide(convertedDisplayDouble, subtotal: self.subtotal)
        self.subtotal = dividend
        self.display.text = "\(dividend)"
        makeActiveButton(sender)
    }
    //percent button - sends notification and changes color to black when pressed.
    @IBAction func percentButton(sender: AnyObject) {

        let convertedDouble = NSString(string: self.display.text!).doubleValue
        let result = MathStuff.percentage(convertedDouble)
        self.display.text = "\(result)"
        
    }
    //negative button - sends notification and changes color to black when pressed.
    @IBAction func negativeButton(sender: UIButton) {

        let convertedDouble = NSString(string: self.display.text!).doubleValue
        let result = MathStuff.negative(convertedDouble)
        self.display.text = "\(result)"
        
    }
    // outlets for each operator buttons to make the active button/color change happen.
    @IBOutlet weak var plusButtonOutlet: UIButton!
    @IBOutlet weak var minusButtonOutlet: UIButton!
    @IBOutlet weak var multiplyButtonOutlet: UIButton!
    @IBOutlet weak var divideButtonOutlet: UIButton!
    @IBOutlet weak var displayLabelHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var memoryLabelOutlet: UILabel!
    @IBOutlet weak var acButtonOutlet: UIButton!
    @IBOutlet weak var acVerticalSpaceToDisplay: NSLayoutConstraint!
    
    @IBAction func equalsButton(sender: UIButton) {
        resetActiveButtonState(sender)
        
        let convertedDisplayDouble = NSString(string: self.display.text!).doubleValue
        var equals = MathStuff.solve(self.operation, displayValue: convertedDisplayDouble, subtotal: self.subtotal)
        self.subtotal = 0.00
        self.display.text = "\(equals)"
    }
    
    // clears everything, sets all vars back to their default values.
    @IBAction func allClear(sender: UIButton) {
        resetActiveButtonState(sender)
        self.operation = "";
        self.subtotal = 0.00;
        self.display.text = "0.00"
        println("the active button is \(self.activeButton)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.display.text = "0.00"
        self.memoryLabelOutlet.text = ""
        self.memoryLabelOutlet.hidden = true
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "percent:", name: "percentButtonPressed", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "negative:", name: "negativeButtonPressed", object: nil)
    }

    func makeMemoryButtons() {
    
        self.view.addSubview(self.memoryAddButton)
        self.memoryAddButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.memoryAddButton.backgroundColor = UIColor.blueColor()
        self.memoryAddButton.setTitle("M+", forState: .Normal)
        self.memoryAddButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.memoryAddButton.titleLabel?.font = UIFont(name: "Avenir", size: 25)
        self.memoryAddButton.addTarget(self, action: "memoryAddButtonPressed:", forControlEvents: .TouchUpInside)
        
        let memoryAddButtonVerticalPosition = NSLayoutConstraint(item: self.memoryAddButton,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.display,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 5)
        
        let memoryAddButtonHorizontalPosition = NSLayoutConstraint(item: self.memoryAddButton,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.display,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 0)
        
        let memoryAddButtonHeight = NSLayoutConstraint(item: self.memoryAddButton,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 60)
        
        let memoryAddButtonWidth = NSLayoutConstraint(item: self.memoryAddButton,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.acButtonOutlet,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        self.view.addSubview(self.memoryRecallButton)
        self.memoryRecallButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.memoryRecallButton.backgroundColor = UIColor.blueColor()
        self.memoryRecallButton.setTitle("M Recall", forState: .Normal)
        self.memoryRecallButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.memoryRecallButton.titleLabel?.font = UIFont(name: "Avenir", size: 25)
        self.memoryRecallButton.addTarget(self, action: "memoryRecallButtonPressed:", forControlEvents: .TouchUpInside)
        
        let memoryRecallButtonVerticalPosition = NSLayoutConstraint(item: self.memoryRecallButton,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.display,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 5)
        
        let memoryRecallButtonHorizontalPosition = NSLayoutConstraint(item: self.memoryRecallButton,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.memoryAddButton,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 5)
        
        let memoryRecallButtonHeight = NSLayoutConstraint(item: self.memoryRecallButton,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 60)
        
        let memoryRecallButtonWidth = NSLayoutConstraint(item: self.memoryRecallButton,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.acButtonOutlet,
            attribute: NSLayoutAttribute.Width,
            multiplier: 2,
            constant: 5)
        
        self.view.addSubview(self.memoryClearButton)
        self.memoryClearButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.memoryClearButton.backgroundColor = UIColor.blueColor()
        self.memoryClearButton.setTitle("MC", forState: .Normal)
        self.memoryClearButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.memoryClearButton.titleLabel?.font = UIFont(name: "Avenir", size: 25)
        self.memoryClearButton.addTarget(self, action: "memoryClearButtonPressed:", forControlEvents: .TouchUpInside)
        
        let memoryClearButtonVerticalPosition = NSLayoutConstraint(item: self.memoryClearButton,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.display,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 5)
        
        let memoryClearButtonHorizontalPosition = NSLayoutConstraint(item: self.memoryClearButton,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.memoryRecallButton,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 5)
        
        let memoryClearButtonHeight = NSLayoutConstraint(item: self.memoryClearButton,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 60)
        
        let memoryClearButtonWidth = NSLayoutConstraint(item: self.memoryClearButton,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.acButtonOutlet,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraints([memoryAddButtonVerticalPosition, memoryAddButtonHorizontalPosition, memoryAddButtonHeight, memoryAddButtonWidth, memoryRecallButtonVerticalPosition, memoryRecallButtonHorizontalPosition, memoryRecallButtonHeight, memoryRecallButtonWidth, memoryClearButtonVerticalPosition, memoryClearButtonHorizontalPosition, memoryClearButtonHeight, memoryClearButtonWidth,])
}
    
    func makeOperationButtonTextWhite() {
        self.plusButtonOutlet?.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.minusButtonOutlet.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.multiplyButtonOutlet.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.divideButtonOutlet.setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }
}


