//
//  ContentView.swift
//  foodshop
//
//  Created by Pedro Caetano on 03/11/23.
//

import SwiftUI
import WaterfallGrid

struct ContentView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                Text("Fruits and berries")
                    .font(.title)
                    .fontWeight(.bold)
                SearchBarView()
            }
            .padding(.bottom)
            
            //
            ScrollView {
                WaterfallGrid(mockFruitData, id: \.self) { fruit in
                    FruitCardView(fruit: fruit)
                }
                .gridStyle(
                    columnsInPortrait: 2,
                    columnsInLandscape: 3,
                    spacing: 8
                )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
