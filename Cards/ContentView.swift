//
//  ContentView.swift
//  Cards
//
//  Created by DARRELL A PAYNE on 7/22/20.
//

import SwiftUI

// This is the View
struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack { // Viewbuilder
            ForEach(viewModel.cards){ card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(Font.largeTitle)
    }
}


struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack { // This is a viewbuilder - cannot put vars in viewbuilder, also other limitations
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            }else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
