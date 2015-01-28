//
//  ViewController.swift
//  Table Views and Scenes - Lesson 9
//
//  Created by Dave Scherler on 1/26/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var swipeView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateRightSwipeOnRedBox()
        initiateDoubleTapOnRedBox ()
    }
    
    func initiateDoubleTapOnRedBox () {
        let dTap = UITapGestureRecognizer(target: self, action: "doubleTapped:")
        
        dTap.numberOfTapsRequired = 2
        
        self.swipeView.addGestureRecognizer(dTap)
    }
    
    func initiateRightSwipeOnRedBox () {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "swipedRight:")
        
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        
        self.swipeView.addGestureRecognizer(swipeRight)
    }
    
    func doubleTapped(sender: UITapGestureRecognizer) { //method that is run after the double tap
        var thirdVC = self.storyboard?.instantiateViewControllerWithIdentifier("thirdVC") as ThirdViewController
        self.presentViewController(thirdVC, animated: true, completion: nil)
        
        /*UIView.animateWithDuration(1.0, animations: {
            self.swipeView.backgroundColor = UIColor.blueColor()
        })*/
        
    }
    
    func swipedRight(sender: UIGestureRecognizer) {
        self.performSegueWithIdentifier("showSecondVC", sender: self)  //method that is run after the swipe
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



