//
//  ProductCard.swift
//  RecycleGo!
//
//  Created by Shamma Alkaabi on 19/02/2023.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width:180)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                        .font(.custom("Futura", fixedSize: 20))
                    
                    Text("\(product.price) AED")
                        .font(.custom("Futura", fixedSize: 15))
                }
                
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                
            }
            .frame(width:180, height:250)
            .shadow(radius: 3)
            Button {
                print("Added to Cart")
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: Productlist[0])
    }
}