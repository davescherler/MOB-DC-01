//
//  Animal.swift
//  Core Data Example - lesson 17
//
//  Created by Dave Scherler on 2/25/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import Foundation
import CoreData

@objc(Animal)

class Animal: NSManagedObject {
    @NSManaged var name: String
    @NSManaged var numberOfLegs: Int32
    @NSManaged var hasFur: Bool
    @NSManaged var noise: String
    
}
