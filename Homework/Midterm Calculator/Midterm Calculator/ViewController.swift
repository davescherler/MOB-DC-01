//
//  ViewController.swift
//  Midterm Calculator
//
//  Created by Dave Scherler on 2/16/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activeButton: UIButton? = nil //var for tracking which button was pressed most recently
    var memoryAddButton = UIButton()
    var memoryRecallButton = UIButton()
    var memoryClearButton = UIButton()
    var memorySubtotal: Double = 0.00
    var adding: Bool = false
    var subtracting: Bool = false
    var multiplying: Bool = false
    var dividing: Bool = false
    var percentage: Bool = false
    var negative: Bool = false   //bools for telling solve func which operation is happening
    var subtotal: Double = 0.00  //var for storing number entered and doing actual math
    var displayNumber: String = ""  //var for displaying the number on the screen
    
    func updateDisplay(value: Int?) -> String {  //func for updating the numbers on the screen.
        var valueString = String(value!)
        
        if self.display.text == "0.00" {
            return valueString
        } else if self.subtotal == NSString(string: self.display.text!).doubleValue {
            return valueString
        } else {
            self.displayNumber = "\(self.display.text!)" + "\(valueString)"
            return displayNumber
        }
    }
    
    //add func that is called from the 'plus button pressed' notification
    func add(notification: NSNotification) {
        self.adding = true
        self.subtotal = NSString(string: self.display.text!).doubleValue
        println("The active operation is adding")
        println("The subtotal is \(self.subtotal)")
    }
    // subtract func that is called from the 'minus button pressed' notification
    func subtract(notification: NSNotification) {
        self.subtracting = true
        self.subtotal = NSString(string: self.display.text!).doubleValue
        println("The active operation is subtracting")
        println("The subtotal is \(self.subtotal)")
    }
    // multiply func that is called from the 'multiply button pressed' notification
    func multiply(notification: NSNotification) {
        self.multiplying = true
        self.subtotal = NSString(string: self.display.text!).doubleValue
        println("The active operation is multiplying")
        println("The subtotal is \(self.subtotal)")
    }
    // divide func that is called from the 'divide button pressed' notification
    func divide(notification: NSNotification) {
        self.dividing = true
        self.subtotal = NSString(string: self.display.text!).doubleValue
        println("The active operation is dividing")
        println("\(self.subtotal)")
    }
    // percent func that is called from the 'percent button pressed' notification
    func percent(notification: NSNotification) {
        self.percentage = true
        println("percentage is true")
        
        var currentDisplayNumberDouble = NSString(string: self.display.text!).doubleValue
        currentDisplayNumberDouble = currentDisplayNumberDouble * (1/100)
        println("the current display double is \(currentDisplayNumberDouble)")
        self.display.text = currentDisplayNumberDouble.description
    }
    
    // negative func that is called from the 'negative button pressed' notification
    func negative(notification: NSNotification) {
        println("the subtotal is \(self.subtotal)")
        if self.negative == false {
            self.negative = true  //if currently false, set to true, make value negative.
        } else {
            self.negative = false //else, if already negative, make positive again.
        }
        var currentDisplayNumberDouble = NSString(string: self.display.text!).doubleValue
        currentDisplayNumberDouble = currentDisplayNumberDouble * -1
        println("the current display double is \(currentDisplayNumberDouble)")
        self.display.text = currentDisplayNumberDouble.description
    }
    
    @IBAction func showMemoryButtons(sender: UISwipeGestureRecognizer) {
        println("swipe down")
        
        if activeButton == nil {
            self.plusButtonOutlet?.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.minusButtonOutlet.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.multiplyButtonOutlet.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.divideButtonOutlet.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        } else {
        }

        self.acVerticalSpaceToDisplay.constant = self.display.frame.height - 100
        
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
        
        if activeButton == nil {
            self.plusButtonOutlet?.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.minusButtonOutlet.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.multiplyButtonOutlet.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.divideButtonOutlet.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        } else {
        }
    }
    
    
    @IBOutlet weak var display: UILabel!
    
    // assigning values to each numeric button, then running that value thru the update display func
    @IBAction func zeroButton(sender: AnyObject) {
        var value = 0
        self.display.text = String(updateDisplay(value))
        println("you entered \(self.display.text)")
    }
    
    @IBAction func oneButton(sender: AnyObject) {
        var value = 1
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func twoButton(sender: AnyObject) {
        var value = 2
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func threeButton(sender: AnyObject) {
        var value = 3
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
   
    @IBAction func fourButton(sender: AnyObject) {
        var value = 4
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
   
    @IBAction func fiveButton(sender: AnyObject) {
        var value = 5
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }

    @IBAction func sixButton(sender: AnyObject) {
        var value = 6
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func sevenButton(sender: AnyObject) {
        var value = 7
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func eightButton(sender: AnyObject) {
        var value = 8
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
    }
    
    @IBAction func nineButton(sender: AnyObject) {
        var value = 9
        self.display.text = updateDisplay(value)
        println("you entered \(self.display.text)")
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

    // plus button - sends notification and changes color to black when pressed.
    @IBAction func plusButton(sender: UIButton) {
        println("sending notifciation message: plusButtonPressed")
        NSNotificationCenter.defaultCenter().postNotificationName("plusButtonPressed", object: nil)
        self.activeButton?.backgroundColor = UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0)
        self.activeButton?.titleLabel?.textColor = UIColor.whiteColor()
        sender.backgroundColor = UIColor.blackColor()
        sender.setTitleColor(UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0), forState: UIControlState.Normal)
        self.activeButton = sender
    }
    // minus button - sends notification and changes color to black when pressed.
    @IBAction func minusButton(sender: UIButton) {
        println("sending notifciation message: minusButtonPressed")
        NSNotificationCenter.defaultCenter().postNotificationName("minusButtonPressed", object: nil)
        self.activeButton?.backgroundColor = UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0)
        self.activeButton?.titleLabel?.textColor = UIColor.whiteColor()
        sender.backgroundColor = UIColor.blackColor()
        sender.setTitleColor(UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0), forState: UIControlState.Normal)
        self.activeButton = sender
    }
    // multiply button - sends notification and changes color to black when pressed.
    @IBAction func multiplyButton(sender: UIButton) {
        println("sending notifciation message: multiplyButtonPressed")
        NSNotificationCenter.defaultCenter().postNotificationName("multiplyButtonPressed", object: nil)
        self.activeButton?.backgroundColor = UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0)
        self.activeButton?.titleLabel?.textColor = UIColor.whiteColor()
        sender.backgroundColor = UIColor.blackColor()
        sender.setTitleColor(UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0), forState: UIControlState.Normal)
        self.activeButton = sender
    }
    // divide button - sends notification and changes color to black when pressed.
    @IBAction func divideButton(sender: UIButton) {
        println("sending notifciation message: divideButtonPressed")
        NSNotificationCenter.defaultCenter().postNotificationName("divideButtonPressed", object: nil)
        self.activeButton?.backgroundColor = UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0)
        self.activeButton?.titleLabel?.textColor = UIColor.whiteColor()
        sender.backgroundColor = UIColor.blackColor()
        sender.setTitleColor(UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0), forState: UIControlState.Normal)
        self.activeButton = sender
    }
    //percent button - sends notification and changes color to black when pressed.
    @IBAction func percentButton(sender: AnyObject) {
        println("sending notifciation message: percentButtonPressed")
        NSNotificationCenter.defaultCenter().postNotificationName("percentButtonPressed", object: nil)
    }
    //negative button - sends notification and changes color to black when pressed.
    @IBAction func negativeButton(sender: AnyObject) {
        println("sending notification message: negativeButtonPressed")
        NSNotificationCenter.defaultCenter().postNotificationName("negativeButtonPressed", object: nil)
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
        println("You pressed Equals and the active button was \(self.activeButton)")
        //setting the operator buttons back to their normal color scheme.
        self.activeButton?.backgroundColor = UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0)
        self.activeButton?.titleLabel?.textColor = UIColor.whiteColor()
        sender.backgroundColor = UIColor(red: 0.96, green: 0.23, blue: 0.44, alpha: 1.0)
        sender.titleLabel?.textColor = UIColor.whiteColor()
        self.activeButton = sender
        self.activeButton = nil
        
        //solve much performs all the actual math, based on which bool is true.
        func solve() -> String {
            if adding == true {
                    var currentDisplayNumberDouble = NSString(string: self.display.text!).doubleValue
                    println("The display number double stored as \(currentDisplayNumberDouble)")
                    var result = self.subtotal + currentDisplayNumberDouble
                    var resultString = result.description
                    return resultString
            } else if subtracting == true {
                    var currentDisplayNumberDouble = NSString(string: self.display.text!).doubleValue
                    println("The display number double stored as \(currentDisplayNumberDouble)")
                    var result = self.subtotal - currentDisplayNumberDouble
                    var resultString = result.description
                    println("\(self.subtotal)")
                    return resultString
            } else if multiplying == true {
                    var currentDisplayNumberDouble = NSString(string: self.display.text!).doubleValue
                    println("The display number double stored as \(currentDisplayNumberDouble)")
                    var result = self.subtotal * currentDisplayNumberDouble
                    var resultString = result.description
                    return resultString
            } else if dividing == true {
                    var currentDisplayNumberDouble = NSString(string: self.display.text!).doubleValue
                    println("The display number double stored as \(currentDisplayNumberDouble)")
                    var result = self.subtotal / currentDisplayNumberDouble
                    var resultString = result.description
                    println("\(self.subtotal)")
                    return resultString
            } else {
            return "0.00"
            }
        }
        self.display.text = solve()
        println("the active button is \(self.activeButton)")
    }
    
    // clears everything, sets all vars back to their default values.
    @IBAction func allClear(sender: AnyObject) {
        self.activeButton?.backgroundColor = UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0)
        self.activeButton?.titleLabel?.textColor = UIColor.whiteColor()
        self.adding = false
        self.subtracting = false
        self.multiplying = false
        self.dividing = false
        self.percentage = false
        self.negative = false
        self.subtotal = 0.00
        self.displayNumber = "0.00"
        self.display.text = self.displayNumber
        self.activeButton = nil
        println("the active button is \(self.activeButton)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayNumber = "0.00"
        self.display.text = self.displayNumber
        self.activeButton?.backgroundColor = UIColor(red:0.84, green:0.62, blue:0.27, alpha:1.0)
        self.activeButton?.titleLabel?.textColor = UIColor.whiteColor()
        self.memoryLabelOutlet.text = ""
        self.memoryLabelOutlet.hidden = true
        //notifications.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "add:", name: "plusButtonPressed", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "subtract:", name: "minusButtonPressed", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "multiply:", name: "multiplyButtonPressed", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "divide:", name: "divideButtonPressed", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "percent:", name: "percentButtonPressed", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "negative:", name: "negativeButtonPressed", object: nil)
    }
    
}


