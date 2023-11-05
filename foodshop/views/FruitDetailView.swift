//
//  FruitDetailView.swift
//  foodshop
//
//  Created by Pedro Caetano on 04/11/23.
//

import SwiftUI

struct FruitDetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @State var fruitCount: Int = 1
    let fruit: Fruit
    var body: some View {
        VStack{
//            HeaderView()
            GeometryReader{ geometry in
                HStack{
                    Image(fruit.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            Spacer()
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
                    HStack{
                        Button(action: {(fruitCount>1) ? (fruitCount-=1) : (fruitCount=1)}, label: {
                            Text("-")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                        })
                        .padding()
                        
                        Text("\(fruitCount)")
                            .padding()
                            .font(.title2)
                            .foregroundStyle(Color.black)
                        
                        Button(action: {fruitCount+=1}, label: {
                            Text("+")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                        })
                        .padding()
                        
                    }
                    .background(Color.inputGray)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
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
                ButtonsView(fruit: fruit)
            }
            .frame(maxHeight: .infinity)
            .padding(.horizontal, 40)
            .padding(.bottom, 50)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 65))
            .offset(CGSize(width: 0, height: 40.0))
        }
        .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "chevron.backward.square.fill")
                            .font(.title)
                            .foregroundStyle(Color.black)
                    }
                }
            }
        .background(Color(fruit.backgroundColor))
    }
}

#Preview {
    FruitDetailView(fruit: banana)
}
