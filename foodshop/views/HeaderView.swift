//
//  HeaderView.swift
//  foodshop
//
//  Created by Pedro Caetano on 05/11/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Image(systemName: "chevron.backward.square.fill")
                .font(.title)
                .foregroundStyle(Color.black)
                .colorInvert()
            Spacer()
            Image(systemName: "line.horizontal.3.decrease.circle")
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    HeaderView()
}
