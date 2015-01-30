//
//  AddViewController.swift
//  Table View Demo
//
//  Created by Dave Scherler on 1/28/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampus(campusName: String) 
}

class AddViewController: UIViewController {
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampus(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBOutlet weak var addTextBox: UITextField!
    
    var delegate: Campus?
    
    
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
