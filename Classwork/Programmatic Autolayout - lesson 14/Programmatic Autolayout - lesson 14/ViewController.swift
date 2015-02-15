//
//  ViewController.swift
//  Programmatic Autolayout - lesson 14
//
//  Created by Dave Scherler on 2/11/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var head: UIView!
    
    var body = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeBody()

        
        var leftArm = UIView()
        leftArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(leftArm)
        
        leftArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let leftArmHeight =  NSLayoutConstraint(item: leftArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let leftArmTop = NSLayoutConstraint(item: leftArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let leftArmLeading = NSLayoutConstraint(item: leftArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 20.0)
        
        let leftArmTrailing = NSLayoutConstraint(item: leftArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 0.0)
        
        self.view.addConstraints([leftArmHeight, leftArmTop, leftArmLeading, leftArmTrailing])
        
        //right arm
        var rightArm = UIView()
        rightArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(rightArm)
        
        rightArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rightArmHeight =  NSLayoutConstraint(item: rightArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let rightArmTop = NSLayoutConstraint(item: rightArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmLeading = NSLayoutConstraint(item: rightArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmTrailing = NSLayoutConstraint(item: rightArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: -20.0)
        
        self.view.addConstraints([rightArmHeight, rightArmTop, rightArmLeading, rightArmTrailing])
        
        var leftLeg = UIView()
        leftLeg.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(leftLeg)
        
        leftLeg.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let leftLegHeight =  NSLayoutConstraint(item: leftLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 120.0)
        
        let leftLegWidth = NSLayoutConstraint(item: leftLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1.0,
            constant: 0.0)
        
        let leftLegBottom = NSLayoutConstraint(item: leftLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let leftLegTrailing = NSLayoutConstraint(item: leftLeg,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraints([leftLegHeight, leftLegWidth, leftLegBottom, leftLegTrailing])
        
        
        //right leg
        
        var rightLeg = UIView()
        rightLeg.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(rightLeg)
        
        rightLeg.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rightLegHeight =  NSLayoutConstraint(item: rightLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 120.0)
        
        let rightLegWidth = NSLayoutConstraint(item: rightLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1.0,
            constant: 0.0)
        
        let rightLegBottom = NSLayoutConstraint(item: rightLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let rightLegLeading = NSLayoutConstraint(item: rightLeg,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraints([rightLegHeight, rightLegWidth, rightLegBottom, rightLegLeading])
        
        let bodyBottomPosition = NSLayoutConstraint(item: body,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: leftLeg,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 0.0)
        
        self.view.addConstraint(bodyBottomPosition)

    }
    
    func makeBody() {
        self.body = UIView()
        self.body.backgroundColor = UIColor.greenColor()
        //need to add subview before adding constraints
        self.view.addSubview(body)
        
        //REQUIRED method to use autolayout (constraints)
        body.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        //Contraints for the body
        let bodyWidth = NSLayoutConstraint(item: body,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            //if you want a static attribute - toItem is set to nil
            toItem: self.head, //the thing you get properties from
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.5,
            constant: 0.0)
        
        let bodyVerticalPosition = NSLayoutConstraint(item: body,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom, //the related attribute of the toItem we are referring to
            multiplier: 1,
            constant: 0.0)
        
        let bodyHortizontalPosition = NSLayoutConstraint(item: body,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Leading, //the related attribute of the toItem we are referring to
            multiplier: 1,
            constant: self.head.frame.width/4)
        
        //        let bodyHeight = NSLayoutConstraint(item: body,
        //            attribute: NSLayoutAttribute.Height,
        //            relatedBy: NSLayoutRelation.Equal,
        //            toItem: self.head,
        //            attribute: NSLayoutAttribute.Height,
        //            multiplier: 2,
        //            constant: 0)
        
        self.view.addConstraints([bodyWidth, bodyVerticalPosition, bodyHortizontalPosition])
    }


}

