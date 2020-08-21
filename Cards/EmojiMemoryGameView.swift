//
//  EmojiMemoryGameView.swift
//  Cards
//
//  Created by DARRELL A PAYNE on 7/22/20.
//

import SwiftUI

// This is the View
struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        // Viewbuilder
        Grid(viewModel.cards) { card in
            CardView(card: card).onTapGesture {
                viewModel.choose(card: card)
            }
            .padding(5)
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        GeometryReader { geometry in
            if card.isFaceUp || !card.isMatched {
                ZStack { // This is a viewbuilder - cannot put vars in viewbuilder, also other limitations
                    Pie(startAngle: Angle.degrees(0-90), endAngle: Angle.degrees(100-90),clockWise: true).padding(7).opacity(0.3)
                    Text(card.content)
                        .font(Font.system(size: fontSize(for: geometry.size)))
                }
                .cardify(isFaceUp: card.isFaceUp)
            }
        }
    }
    
    private let fontScaleFactor: CGFloat = 0.75
    
    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * fontScaleFactor
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        game.choose(card: game.cards[0])
        return EmojiMemoryGameView(viewModel: game)
    }
}
