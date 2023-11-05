//
//  FruitGrid.swift
//  foodshop
//
//  Created by Pedro Caetano on 04/11/23.
//

import SwiftUI
import WaterfallGrid

struct FruitGrid: View {
    @Binding var searchText: String
    
    var body: some View {
        ScrollView {
            WaterfallGrid(mockFruitData.filter { fruit in
                searchText.isEmpty || fruit.name.localizedCaseInsensitiveContains(searchText)
            }, id: \.self) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitCardView(fruit: fruit)
                        .foregroundStyle(Color.black)
                }
            }
            .gridStyle(
                columnsInPortrait: 2,
                columnsInLandscape: 3,
                spacing: 15
            )
        }
    }
}

struct FruitGrid_Previews: PreviewProvider {
    @State static var search: String = ""
    
    static var previews: some View {
        FruitGrid(searchText: $search)
    }
}
