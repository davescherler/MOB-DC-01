// Playground - noun: a place where people can play

import UIKit
import XCPlayground

//XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: <#Bool#>)

//let asynchronous code run
XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: true)

let url = NSURL(string: "http://google.com")



let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
    println("foo")
    println(data)
    println(response)
    println(error)
})

task.resume()






