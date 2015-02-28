//
//  ViewController.swift
//  Core Data Example - lesson 17
//
//  Created by Dave Scherler on 2/25/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    //make a connection to the AppDelegate, this is necessary and boilerplate.
    var appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let moc = self.appDelegate.managedObjectContext {
            var ena = NSEntityDescription.insertNewObjectForEntityForName("Animal", inManagedObjectContext: moc) as Animal
            
            ena.name = "Ena"
            ena.numberOfLegs = 4
            ena.hasFur = true
            ena.noise = "Woof woof"
            appDelegate.saveContext()
            
            var Tedi = NSEntityDescription.insertNewObjectForEntityForName("Animal", inManagedObjectContext: moc) as Animal
            
            Tedi.name = "Tedi"
            Tedi.numberOfLegs = 2
            Tedi.hasFur = false
            Tedi.noise = "Hi"
            appDelegate.saveContext()
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loadAnimalData(sender: AnyObject) {
        if let moc = self.appDelegate.managedObjectContext {
            let fetchAnimals = NSFetchRequest(entityName: "Animal")
            let animalPredicate = NSPredicate(format: "name contains %@", "edi")
            fetchAnimals.predicate = animalPredicate
            
            if let animals: [Animal] = moc.executeFetchRequest(fetchAnimals, error: nil) as? [Animal] {
                for animal in animals {
                    println(animal.name)
                    println(animal.noise)
                }
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

