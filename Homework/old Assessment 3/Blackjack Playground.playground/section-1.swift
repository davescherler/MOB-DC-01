// Playground - noun: a place where people can play

import UIKit

import Foundation




protocol BlackJack {
    // Require a deal method
    func dealPlayerCards()
    func dealDealerCards()
    // Require a first hand method
    func playerFirstHand()
    func dealerHand()
    //var playerName: String
    //var blackJack: Int
    //var blackJack: Bool    // an idea: if blackjack is true, then player wins?
}

/*class CardGame: BlackJack {
    var playerStartScore = 0
    var playerDealtScore = 0
    var dealerStartScore = 0
    
    func dealPlayerCards() {
        var playerCardOne = Int(arc4random_uniform(10)+1)
        var playerCardTwo = Int(arc4random_uniform(10)+1)
    }
    
    func dealDealerCards() {
        var dealerCards = Int(arc4random_uniform(9)+12)
    }
}*/


class Player {
    
    var name: String
    var startingScore: Int = 0  // score of first two cards dealt
    
    init (enterName: String) {    //initalize (ask) for the player name
        self.name = String(enterName)
    }
}

var dave = Player(enterName: "Dave")
dave.name






