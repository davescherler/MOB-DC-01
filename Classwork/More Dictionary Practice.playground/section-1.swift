// Playground - noun: a place where people can play

import UIKit
import Foundation

class Test {
    
    let dictionary: [String: String] = [:]
    
    var myDictNames: [String: String] = ["firstName": "Dave", "lastName": "Scherler"]
    var myDictAges: [String: Int] = ["Age": 28]
    var myDict = [dictionary]

    class func convert(value: Int) -> String {
        var stringAge = "0"
        for value in myDictAges.values {
        stringAge = String(value)
        }
    return stringAge
    }


}



