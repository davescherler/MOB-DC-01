//
//  UserViewController.swift
//  Whisper App Example - lesson 21
//
//  Created by Dave Scherler on 3/11/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var feedbackLabel: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var currentUser = PFUser.currentUser()
        
        if (currentUser != nil) {
            println("You are logged in")
            println(currentUser)
        } else {
            println("Not logged in!")
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logIn(sender: UIButton) {
        PFUser.logInWithUsernameInBackground(self.username.text, password: self.password.text) { (user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                self.feedbackLabel.text = "Successfully logged in!"
            } else {
                self.feedbackLabel.text = "Username or password is incorrect!"
            }
        }
    }
    
    @IBAction func register(sender: UIButton) {
        var user = PFUser()
        user.username = self.username.text
        user.password = self.password.text
        user.email = self.username.text
        
        user.signUpInBackgroundWithBlock { (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                self.feedbackLabel.text = "Successfully signed up!"
                self.username.text = ""
                self.password.text = ""
            } else {
                let errorString = error.userInfo!["error"] as NSString
                self.feedbackLabel.text = errorString
            }
        }
    }

}
