// Playground - noun: a place where people can play

import UIKit

var wayneGretzky = ["first_name": "Wayne", "last_name": "Gretzky", "team": "Capitals"]

wayneGretzky["first_name"]

if let wayneName = wayneGretzky["first_name"] {
    println(wayneName)
}

var ena: [String: Int] = [:]

//set values in dict
ena["Legs"] = 4

ena["Eyes"] = 2

ena["Paws"] = 4

//remove value from dict
ena.removeValueForKey("Eyes")
ena["Eyes"] = nil

for (key, value) in ena {
    println("Ena has \(value) \(key)")
}

for enaKey in ena.keys {
    println("\(enaKey)")
}

for enaValue in ena.values {
    println("\(enaValue)")
}

var articles = [
    ["Title": "Ena Breaks Tail", "Date": "02/23/15", "Author": "Tedi"],
    ["Title": "MOB Class Does Core Data", "Date": "02/25/15", "Author": "Arthur"]
]

for article in articles {
    println(article["Title"]!)
}
