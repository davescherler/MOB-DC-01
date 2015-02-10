//
//  ViewController.swift
//  Autolayout - lesson 13
//
//  Created by Dave Scherler on 2/9/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var verticalSpacingBetweenPurpleGhostAndPacman: NSLayoutConstraint!
    
    @IBAction func increaseDistanceBetweenGhostAndPacman(sender: AnyObject) {
        self.verticalSpacingBetweenPurpleGhostAndPacman.constant = 100
        UIView.animateWithDuration(2, animations: {
           self.view.layoutIfNeeded() })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

