//
//  SecondViewController.swift
//  Lesson03
//
//  Created by Dave Scherler on 1/29/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBAction func dissmissModalVC(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
