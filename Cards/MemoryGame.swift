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
    
    mutating func choose(card: Card){
        let chosenIndex: Int = self.index(of: card)
        self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
        print("card chosen: \(card)")

    }
    
    func index(of card: Card) -> Int {
        for index in 0..<self.cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0 // TODO: bogus!
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
