//
//  ViewController.swift
//  Classes Examples - Lesson7
//
//  Created by Dave Scherler on 1/14/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterName: UITextField!
    
    @IBOutlet weak var enterSpecies: UITextField!
    
    
    @IBOutlet weak var updateLabel: UITextField!
    
    
    @IBAction func makeCat(sender: AnyObject) {
        let cat = Animal()
        cat.name = enterName.text
        cat.species = enterSpecies.text
        
        //cat.name = "Fluffy"
        //cat.species = "Feline"
        updateLabel.text = cat.stringRepresentation()
    }
    
    @IBAction func makeDog(sender: AnyObject) {
        let dog = Animal()
        dog.name = enterName.text
        dog.species = enterSpecies.text
        
        //dog.name = "Rover"
        //dog.species = "Canine"
        updateLabel.text = dog.stringRepresentation()
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

