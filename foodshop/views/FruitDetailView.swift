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
                .padding(.top,30)
                HStack{
                    //ammount selector
                    HStack{
                        Button(action: {}, label: {
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
                VStack(alignment: .leading){
                    Text("Product Description")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom)
                    Text(fruit.description)
                        .fixedSize(horizontal: false, vertical: true)
                }
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
            .frame(maxHeight: .infinity)
            .padding(.horizontal, 40)
            .padding(.bottom, 50)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 65))
        }.background(Color(fruit.backgroundColor))
    }
}

#Preview {
    FruitDetailView(fruit: mango)
}
