//
//  ViewController.swift
//  Arrays Project - Lesson 10
//
//  Created by Dave Scherler on 1/28/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterTask: UITextField!
    @IBAction func addTaskToList(sender: AnyObject) {
        var taskText = String(enterTask.text)
        var newTaskItem = AddNewTask()
        enterTask.text = newTaskItem.generateTaskText()
    }
    
    var toDoList: [String] = ["Buy milk", "Pick up dry cleaning", "Go to soccer practive", "Finish Mob Dev homework", "Buy gift for birthday party", "Call my mom", "Groom Fluffy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoList.append("Fill up my growlers for the party!")
        for i in toDoList {
            println("i")
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

