import Foundation

class Weather {
    
    var friendlyWeather: NSString?
    var fahrenheit: Float?
    
    init(json: NSDictionary) {
        if let weather = json["weather"] as? NSArray {
            if let firstWeather = weather[0] as? NSDictionary {
                if let description = firstWeather["description"] as? NSString {
                    self.friendlyWeather = description
                }
            }
        }
        if let main = json["main"] as? NSDictionary {
            if let temp = main["temp"] as? Float {
                self.fahrenheit = (temp - 273.15) * 1.8 + 32
            }
        }
    }
    
    class func retrieveWeather(userLoc: String, completionHandler: ((Weather) -> Void)) {
        
        if let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(userLoc)") {
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
                
                if let weatherDict = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: nil) as? NSDictionary {
                        var weather = Weather(json: weatherDict)
                        dispatch_async(dispatch_get_main_queue(), { ()
                            completionHandler(weather)
                                })
                            }
            })
            task.resume()
        }

    }
}