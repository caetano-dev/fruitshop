//
//  SearchBarView.swift
//  foodshop
//
//  Created by Pedro Caetano on 03/11/23.
//

import SwiftUI

struct SearchBarView: View {
    @State private var searchContent: String = ""
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            TextField(
                "Search",
                text: $searchContent
            )
        }.padding()
            .background(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    SearchBarView()
}
