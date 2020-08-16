//
//  CardsApp.swift
//  Cards
//
//  Created by DARRELL A PAYNE on 7/22/20.
//

import SwiftUI

@main
struct CardsApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
