//
//  FruitGrid.swift
//  foodshop
//
//  Created by Pedro Caetano on 04/11/23.
//

import SwiftUI
import WaterfallGrid

struct FruitGrid: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                WaterfallGrid(mockFruitData, id: \.self) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitCardView(fruit: fruit)
                    }
                    .foregroundStyle(Color.black)
                }
                .gridStyle(
                    columnsInPortrait: 2,
                    columnsInLandscape: 3,
                    spacing: 8
                )
            }
        }
    }
}

#Preview {
    FruitGrid()
}
