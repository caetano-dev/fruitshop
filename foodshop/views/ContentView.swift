//
//  ContentView.swift
//  foodshop
//
//  Created by Pedro Caetano on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                VStack(alignment: .leading) {
                    Text("Fruits and berries")
                        .font(.title)
                        .fontWeight(.bold)
                    SearchBarView(searchText: $searchText)
                }
                .padding(.bottom)
                
                FruitGrid(searchText: $searchText)
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @State static var search: String = ""
    static var previews: some View {
        ContentView(searchText: search)
    }
}
