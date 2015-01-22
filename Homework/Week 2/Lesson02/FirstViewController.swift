//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’*/
    
    
   
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterAge: UITextField!
    @IBOutlet weak var updateLabel: UILabel!
    @IBAction func generateText(sender: AnyObject) {
        updateLabel.text = sayHelloWorld() + " " + helloNameAndAge() + " " + whatYouCanDo() + " " + drinkDriveVote()
        //updateLabel.text = helloNameAndAge()
    }


    func sayHelloWorld () -> String {
        return "Hello World!"
}
    
    /*
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”*/


func helloNameAndAge () -> String {
    
    return "Hello \(enterName.text), you are \(enterAge.text) years old!"
}
    func whatYouCanDo() ->String {
        var ageText = (enterAge.text).toInt()
        let age = ageText!
        
        if  age >= 21 {
            return "You can drink!"
        } else if age >= 18 {
            return "You can vote!"
        } else if age >= 16 {
            return "You can drive!"
        } else {
            return "You are too young!"
        }
    }
    /*
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”*/
    
    /*
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
 //var age = (enterAge).toInt()! why can't we declare a var here?
    
    
    func drinkDriveVote () -> String {
        var age = (enterAge.text).toInt()!
        
        if age >= 16 && age < 18 {
            return "You can drive."
        } else if age >= 18 && age < 21 {
            return "You cand drive and vote."
        } else if age > 21 {
            return "You can drive, vote, and drink - but not at the same time!"
        } else {
            return "Sorry, you can't do anything."
        }
    }

}