//
//  ViewController.swift
//  Hangman Game
//
//  Created by Dave Scherler on 2/12/15.
//  Copyright (c) 2015 DaveScherler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hangmanTitle = UILabel()
    var backgroundForTiles = UIView()
    var tileOne = UILabel()
    var tileTwo = UILabel()
    var numberOfTiles = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeHangmanTitle()
        makeBackgroundForTiles()
        makeEmptyTiles()
    }
    
    func makeHangmanTitle() {
        self.view.addSubview(hangmanTitle)
        self.hangmanTitle.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.hangmanTitle.text = "Hangman!"
        self.hangmanTitle.backgroundColor = UIColor.blueColor()
        self.hangmanTitle.textColor = UIColor.whiteColor()
        self.hangmanTitle.textAlignment = .Center
        
        let hangmanTitleHorizontalPosition = NSLayoutConstraint(item: hangmanTitle,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1,
            constant: 0)
        
        let hangmanTitleVerticalPosition = NSLayoutConstraint(item: hangmanTitle,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 30)
        
        let hangmanTitleLeading = NSLayoutConstraint(item: hangmanTitle,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 10)
        
        let hangmanTitleTrailing = NSLayoutConstraint(item: hangmanTitle,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: -10)
        
        self.view.addConstraints([hangmanTitleHorizontalPosition, hangmanTitleVerticalPosition, hangmanTitleLeading, hangmanTitleTrailing])
    }
    
    func makeBackgroundForTiles() {
        self.view.addSubview(backgroundForTiles)
        self.backgroundForTiles.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.backgroundForTiles.backgroundColor = UIColor.lightGrayColor()
        
        let backgroundForTilesVerticalPosition = NSLayoutConstraint(item: backgroundForTiles,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: hangmanTitle,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 10)
        
        let backgroundForTilesHeight = NSLayoutConstraint(item: backgroundForTiles,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 75)
        
        let backgroundForTilesLeading = NSLayoutConstraint(item: backgroundForTiles,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: hangmanTitle,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 1)
        
        let backgroundForTilesTrailing = NSLayoutConstraint(item: backgroundForTiles,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: hangmanTitle,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 1)
        
        self.view.addConstraints([backgroundForTilesVerticalPosition, backgroundForTilesHeight, backgroundForTilesLeading, backgroundForTilesTrailing])
    }
    
    func makeEmptyTiles() {
        // tile one
        self.numberOfTiles = 2
        self.view.addSubview(tileOne)
        self.tileOne.setTranslatesAutoresizingMaskIntoConstraints(false)
        println("about to set text to test")
        self.tileOne.text = "test"
        self.tileOne.backgroundColor = UIColor.whiteColor()
        self.tileOne.textColor = UIColor.blackColor()
        self.tileOne.textAlignment = .Center
        
        let tileOneVerticalPosition = NSLayoutConstraint(item: tileOne,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: backgroundForTiles,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1,
            constant: 0)
        
        let tileOneHorizontalPosition = NSLayoutConstraint(item: tileOne,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: backgroundForTiles,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1,
            constant: self.view.frame.width * CGFloat(1/self.numberOfTiles))
        
        let tileOneWidth = NSLayoutConstraint(item: tileOne,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 60)
        
        let tileOneHeight = NSLayoutConstraint(item: tileOne,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 60)
        
        self.view.addConstraints([tileOneVerticalPosition, tileOneHorizontalPosition, tileOneWidth, tileOneHeight])
        
        // tile two
        println("about to add second tile")
        self.view.addSubview(tileTwo)
        self.tileTwo.setTranslatesAutoresizingMaskIntoConstraints(false)
        println("about to set text to test two")
        self.tileTwo.text = "test two"
        self.tileTwo.backgroundColor = UIColor.whiteColor()
        self.tileTwo.textColor = UIColor.blackColor()
        self.tileTwo.textAlignment = .Center
        
        let tileTwoVerticalPosition = NSLayoutConstraint(item: tileTwo,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: backgroundForTiles,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1,
            constant: 0)
        
       let tileTwoHorizonatalPosition = NSLayoutConstraint(item: tileTwo,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: backgroundForTiles,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1,
            constant: backgroundForTiles.frame.width * CGFloat(1/self.numberOfTiles))
        
        let tileTwoWidth = NSLayoutConstraint(item: tileTwo,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 60)
        
        let tileTwoHeight = NSLayoutConstraint(item: tileTwo,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 60)
        
        println("about to add tile two constraints")
        
        self.view.addConstraints([tileTwoVerticalPosition, tileTwoHorizonatalPosition, tileTwoWidth, tileTwoHeight])
    }



}

