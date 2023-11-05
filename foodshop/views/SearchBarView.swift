//
//  SearchBarView.swift
//  foodshop
//
//  Created by Pedro Caetano on 03/11/23.
//

import SwiftUI

struct SearchBarView: View {
    @Binding private var searchText: String
    
    init(searchText: Binding<String>) {
        _searchText = searchText
    }
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            TextField(
                "Search",
                text: $searchText
            )
        }.padding()
            .background(Color.inputGray)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct SearchBarView_Previews: PreviewProvider {
    @State static var search: String = ""
    
    static var previews: some View {
        SearchBarView(searchText: $search)
    }
}
