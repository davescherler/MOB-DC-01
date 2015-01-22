//
//  ViewController.swift
//  View Demos Class 8
//
//  Created by Dave Scherler on 1/21/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySquare: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        UIView.animateWithDuration(1.5, animations)
        
        
    }

    @IBAction func swipeSquareRight(sender: UISwipeGestureRecognizer) {
        UIView.animateWithDuration(5, animations: {
            self.mySquare.backgroundColor = UIColor.redColor()
        })
    }
    
    @IBAction func swipeSquareLeft(sender: UISwipeGestureRecognizer) {
        UIView.animateWithDuration(5, animations: {
            self.mySquare.backgroundColor = UIColor.blueColor()
        })
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

