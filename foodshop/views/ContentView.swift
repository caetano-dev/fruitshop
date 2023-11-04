//
//  ContentView.swift
//  foodshop
//
//  Created by Pedro Caetano on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .leading) {
                    Text("Fruits and berries")
                        .font(.title)
                        .fontWeight(.bold)
                    SearchBarView()
                }
                .padding(.bottom)
                
                FruitGrid()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
