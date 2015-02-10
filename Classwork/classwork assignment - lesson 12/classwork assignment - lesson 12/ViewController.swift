//
//  ViewController.swift
//  classwork assignment - lesson 12
//
//  Created by Dave Scherler on 2/4/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var welcomeLabel = UILabel(frame: CGRect(x: self.view.frame.width * 0.05, y: 40, width: self.view.frame.width * 0.90, height: 50))
        welcomeLabel.autoresizingMask = UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleBottomMargin
        welcomeLabel.text = "Welcome Back! Please log in"
        welcomeLabel.textAlignment = NSTextAlignment.Center
        welcomeLabel.backgroundColor = UIColor.purpleColor()
        welcomeLabel.textColor = UIColor.whiteColor()
        self.view.addSubview(welcomeLabel)
        
        var usernameTextBox = UITextField(frame: CGRect(x: self.view.frame.width * 0.05, y: 100, width: self.view.frame.width * 0.90, height: 20))
        usernameTextBox.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        usernameTextBox.placeholder = "Username"
        usernameTextBox.textColor = UIColor.blackColor()
        self.view.addSubview(usernameTextBox)
        
        var passwordTextBox = UITextField(frame: CGRect(x: self.view.frame.width * 0.05, y: 150, width: self.view.frame.width * 0.90, height: 20))
        passwordTextBox.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        passwordTextBox.placeholder = "Password"
        passwordTextBox.textColor = UIColor.blackColor()
        self.view.addSubview(passwordTextBox)
        
        var loginButton = UIButton(frame: CGRect(x: self.view.frame.width * 0.05, y: self.view.frame.height * 0.50, width: self.view.frame.width * 0.90, height: 30))
        loginButton.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleBottomMargin
        loginButton.setTitle("Login", forState: .Normal)
        loginButton.backgroundColor = UIColor.blueColor()
        self.view.addSubview(loginButton)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

