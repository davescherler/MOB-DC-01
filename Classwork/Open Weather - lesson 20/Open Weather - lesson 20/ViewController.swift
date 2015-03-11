//
//  ViewController.swift
//  Open Weather - lesson 20
//
//  Created by Dave Scherler on 3/9/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherDescription: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    
    
    @IBAction func updateWeather(sender: UIButton) {
        weatherDescription.text = "loading..."
        Weather.retrieveWeather(self.cityTextField.text + "," +  self.stateTextField.text) { (weather) -> Void in
            self.weatherDescription.text = weather.friendlyWeather
            println("The temperature is \(weather.fahrenheit)")
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Weather.retrieveWeather("washington,dc") { (weather) -> Void in
            self.weatherDescription.text = weather.friendlyWeather
            println("The temperature is \(weather.fahrenheit)")
        }
    }

}

