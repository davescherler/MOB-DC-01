//
//  ViewController.swift
//  Test For Hidden Buttons
//
//  Created by Dave Scherler on 2/19/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.button1.hidden = true
        self.button2.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showButtons(sender: AnyObject) {
        self.button1.hidden = false
        self.button2.hidden = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

