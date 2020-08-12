//
//  EmojiMemoryGame.swift
//  Cards
//
//  Created by DARRELL A PAYNE on 8/8/20.
//

import SwiftUI

// This is the View Model

//func createCardContent(pairIndex: Int) -> String {
//    return "😀"
//}

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🐹","🐻","🦁"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
           return emojis[pairIndex]
        }
    }
        
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards // One line does not require return
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
