//
//  Grid.swift
//  Cards
//
//  Created by DARRELL A PAYNE on 8/16/20.
//

import SwiftUI

// Item is a don't card var (Generic)
struct Grid<Item, ItemView>: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView {
        
    }
    
    var body: some View {
        Text("Test")
    }
}
