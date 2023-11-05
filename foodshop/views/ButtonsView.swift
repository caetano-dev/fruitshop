//
//  ButtonsView.swift
//  foodshop
//
//  Created by Pedro Caetano on 05/11/23.
//

import SwiftUI

struct ButtonsView: View {
    let fruit: Fruit
    var body: some View {
        HStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "heart.fill")
                    .font(.largeTitle)
                    .foregroundStyle(Color(fruit.backgroundColor))
            })
            .frame(width: 70, height: 70)
            .background(Color.clear)
            .clipShape(Circle())
            .overlay(
                RoundedRectangle(cornerRadius: 15.0)
                    .stroke(Color(fruit.backgroundColor), lineWidth: 1)
            )
            .padding(.trailing, 5)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Add to cart")
                    .foregroundStyle(Color.black)
                    .font(.headline)
                    .fontWeight(.bold)
            })
            .frame(width: 250, height: 70)
            .background(Color(fruit.backgroundColor))
            .clipShape(RoundedRectangle(cornerRadius: 15.0))
            
        }
    }
}

#Preview {
    ButtonsView(fruit: mango)
}
