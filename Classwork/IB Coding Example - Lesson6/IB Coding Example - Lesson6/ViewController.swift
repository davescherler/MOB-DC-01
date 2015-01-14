//
//  ViewController.swift
//  IB Coding Example - Lesson6
//
//  Created by Dave Scherler on 1/12/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBAction func changeLabel(sender: AnyObject) {
        nameLabel.text = nameTextField.text
    
    }
    
    @IBAction func changeLabelOnDrag(sender: UISlider) {
        let sliderValue = Int(sender.value)
        nameLabel.text = String(sliderValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("testing leaded view")
    }

   


}

