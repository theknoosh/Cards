//
//  MemoryGame.swift
//  Cards
//
//  Created by DARRELL A PAYNE on 8/7/20.
//

import Foundation

// This is the model
struct MemoryGame<CardContent> { // CardContent is "don't care type" so can take any type
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) { // Function that passes a function (functional programming)
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, content: content))
            cards.append(Card(id: pairIndex * 2 + 1, content: content))
        }
    }
    
    struct Card: Identifiable {
        var id: Int
        
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent // Generic??
    }
}
