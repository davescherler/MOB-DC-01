//
//  ViewController.swift
//  robot face - lesson 13
//
//  Created by Dave Scherler on 2/9/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func swipeRightOnMouth(sender: AnyObject) {
        UIView.animateWithDuration(0.5, animations: {
        self.robotMouth.backgroundColor = UIColor.blueColor()
        })
    }
    
   
    @IBOutlet weak var robotMouth: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

