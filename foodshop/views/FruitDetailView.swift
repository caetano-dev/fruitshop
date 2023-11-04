//
//  FruitDetailView.swift
//  foodshop
//
//  Created by Pedro Caetano on 04/11/23.
//

import SwiftUI

struct FruitDetailView: View {
    let fruit: Fruit
    var body: some View {
        VStack{
            HStack{
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
            }
            
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text(fruit.name)
                            .font(.title)
                            .fontWeight(.bold)
                        Text(fruit.units)
                            .font(.subheadline)
                            .opacity(0.5)
                    }
                    
                    Spacer()
                }
                HStack{
                    //ammount selector
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("-")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                        })
                        .padding()
                        
                        Text("1")
                            .padding()
                            .font(.title2)
                            .foregroundStyle(Color.black)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("+")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                        })
                        .padding()
                        
                    }
                    .background(Color.inputGray)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    //ammount selector
                    Spacer()
                    Text(String(format: "$%.2f", fruit.pricePerEach))
                        .font(.title)
                        .fontWeight(.bold)
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("Product Description")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom)
                    Text(fruit.description)
                }
            }
            .frame(maxHeight: .infinity)
            .padding(40)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 55))
            .offset(CGSize(width: 0, height: 50.0))
            Spacer()
        }.background(Color(fruit.backgroundColor))
    }
}

#Preview {
    FruitDetailView(fruit: mango)
}
