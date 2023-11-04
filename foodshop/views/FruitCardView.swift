//
//  FruitCardView.swift
//  foodshop
//
//  Created by Pedro Caetano on 03/11/23.
//

import SwiftUI

struct FruitCardView: View {
    let fruit: Fruit
    
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                Text(fruit.name)
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Text(fruit.units)
                    .font(.subheadline)
                    .opacity(0.8)
                
                
                Text(String(format: "$%.2f", fruit.pricePerEach))
                    .font(.headline)
                    .fontWeight(.bold)
                
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 120)
            }
            .padding(.top, 20)
            HStack{
                Spacer()
                Image(systemName: "checkmark")
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .padding(15)
                    .background(Color(fruit.backgroundColor).opacity(0.3))
                    .clipShape(Rectangle())
            }
        }
        .frame(width: 160)
        .background(Color(fruit.backgroundColor).opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

#Preview {
    FruitCardView(fruit:strawberry)
}
