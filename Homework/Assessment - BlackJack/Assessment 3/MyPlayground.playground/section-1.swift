// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation

protocol BlackJack {
    // Require a deal method
    // Require a first hand method
    func dealCards() -> String
    func firstHand() -> String
    /*var playerCardOne: Int {get set}
    var playerCardTwo: Int {get set}
    var playerDealtScore: Int {get set}
    var dealerCards: Int {get set} */
}

class CardGame: BlackJack {
    
    var playerCardOne = 0
    var playerCardTwo = 0
    var playerDealtScore = 0
    var dealersHand = 0
    
    func dealCards() -> String {
        self.playerCardOne = Int(arc4random_uniform(10)+1)
        self.playerCardTwo = Int(arc4random_uniform(10)+1)
        self.playerDealtScore = self.playerCardOne + self.playerCardTwo
        
        return "Your hand is being dealt..."
    }
    
    func firstHand() -> String {
        var dealersHand = Int(arc4random_uniform(9)+12)
        
        if self.playerDealtScore == 21 {
            return "Blackjack! You win!"
        } else if self.dealersHand == 21 {
            return "Rats! The dealer has 21. You Lose!"
        } else if self.playerDealtScore == 21 && self.dealersHand == 21 {
            return "What are the odds?! You and the dealer both hit 21! Cal it a push!"
        } else {
            return "You were dealt a \(self.playerCardOne) and a \(self.playerCardTwo)! Your score is \(self.playerDealtScore). Do you want to HIT or STAY?"
        }
    }
    
    func stayAndShowHand() -> String {  //playerDealtScore shoudn't change, should compare to dealer's hand.
        
        if self.playerDealtScore < self.dealersHand {
            return "Damn. Dealer has \(self.dealersHand), you lose!"
        } else {
            return "Nice! Your \(self.playerDealtScore) beats the dealer's \(self.dealersHand). You win!"
        }
    }
    
    func hit() -> String {
        self.playerDealtScore = self.playerDealtScore + Int(arc4random_uniform(10)+1)
        
        if self.playerDealtScore > 21 {
            return "Shoot! Over 21. You bust!"
        } else if self.playerDealtScore == 21 {
            return "Blackjack! You win!"
        } else if self.dealersHand == 21 {
            return "Rats! The dealer has 21. You Lose!"
        } else if self.playerDealtScore == 21 && self.dealersHand == 21 {
            return "What are the odds?! You and the dealer both hit 21! Cal it a push!"
        } else {
            return "You were dealt a \(self.playerCardOne) and a \(self.playerCardTwo)! Your score is \(self.playerDealtScore). Do you want to HIT or STAY?"
        }
    }

}

var gameOne = CardGame()
gameOne.dealCards()
gameOne.firstHand()

