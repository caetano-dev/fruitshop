//
//  ContentView.swift
//  foodshop
//
//  Created by Pedro Caetano on 03/11/23.
//

import SwiftUI

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
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                    ForEach(mockFruitData, id: \.name) { fruit in
                        FruitCardView(fruit: fruit)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
