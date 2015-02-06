//
//  ViewController.swift
//  Programmatic Views - lesson 12
//
//  Created by Dave Scherler on 2/4/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var redBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        redBox.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        redBox.backgroundColor = UIColor.redColor()
        redBox.layer.cornerRadius = 50
        self.view.addSubview(redBox)
        
        var redBoxLabel = UILabel(frame: CGRect(x: 0, y: 50, width: redBox.frame.width, height: 30))
        redBoxLabel.text = "Hello world"
        redBoxLabel.backgroundColor = UIColor.yellowColor()
        redBoxLabel.textColor = UIColor.blueColor()
        redBoxLabel.textAlignment = NSTextAlignment.Center
        redBox.addSubview(redBoxLabel)
        
        var actionBtn = UIButton(frame: CGRect(x: self.view.frame.width * 0.05, y: 300, width: self.view.frame.width * 0.90, height: 30))
        actionBtn.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        actionBtn.setTitle("Click me!", forState: .Normal)
        actionBtn.addTarget(self, action: "pressedCodedButton:", forControlEvents: .TouchUpInside)
        actionBtn.backgroundColor = UIColor.greenColor()
        self.view.addSubview(actionBtn)
        
        /*var giantsImage = UIImage(named: "Giants.jpg")
        var giantsImageView = UIImageView(image: giantsImage)
        giantsImageView.frame = CGRect(x: 50, y: 350, width: 200, height: 200)
        giantsImageView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleRightMargin
        self.view.addSubview(giantsImageView)*/
        
        var boxScrollView = UIScrollView(frame: CGRect(x: 50, y: 350, width: 200, height: 300))
        boxScrollView.backgroundColor = UIColor.grayColor()
        boxScrollView.contentSize = CGSize(width: 200, height: 600)
        self.view.addSubview(boxScrollView)
        
        var greenBox = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 150))
        greenBox.backgroundColor = UIColor.greenColor()
        
        var blueBox = UIView(frame: CGRect(x: 0, y: 150, width: 200, height: 150))
        blueBox.backgroundColor = UIColor.blueColor()
        
        var purpleBox = UIView(frame: CGRect(x: 0, y: 300, width: 200, height: 150))
        purpleBox.backgroundColor = UIColor.purpleColor()
        
        boxScrollView.addSubview(greenBox)
        boxScrollView.addSubview(blueBox)
        boxScrollView.addSubview(purpleBox)
    }
    
    func pressedCodedButton(sender: UIButton) {
        println("Hello World")
        sender.removeFromSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

