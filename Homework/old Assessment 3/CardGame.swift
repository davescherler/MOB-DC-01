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
    func dealCards()
    // Require a first hand method
    func firstHand()
    //var playerName: String
    //var blackJack: Int
    //var blackJack: Bool    // an idea: if blackjack is true, then player wins?
}

class CardGame: BlackJack {
    var playerStartScore = 0
    var playerDealtScore = 0
    var dealerStartScore = 0
    
    func dealCards() {
        var playerCardOne = Int(arc4random_uniform(10)+1)
        var playerCardTwo = Int(arc4random_uniform(10)+1)
    }
    
   // func dealer() -> Int {
        
      //  var dealerCards = Int(arc4random_uniform(9)+12)
      //  return self.dealCards
   // }
    
    //
    
    func firstHand() -> String {
        self.playerDealtScore = self.playerCardOne + self.playerCardTwo
        var dealerCards = Int(arc4random_uniform(9)+12)
        
        if self.playerDealtScore == 21 {
            return "Blackjack! You win!"
        } else if dealerCards == 21 {
            return "Rats! The dealer has 21. You Lose!"
        } else if self.playerDealtScore == 21 && self.dealerCards == 21 {
                return "What are the odds?! You and the dealer both hit 21! Cal it a push!"
        } else {
            return "You were dealt a \(self.playerCardOne) and a \(self.playerCardTwo)! Your score is \(self.playerDealtScore). Do you want to HIT or STAY?"
        }
    }
    
    func hit() {
        
    }










