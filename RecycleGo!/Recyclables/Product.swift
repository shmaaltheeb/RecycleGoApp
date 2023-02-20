//
//  Product.swift
//  RecycleGo!
//
//  Created by Shamma Alkaabi on 19/02/2023.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var price : Int
    
}

var Productlist = [Product(name: "Plastics", image: "plastic", price: 10),
                   Product(name: "Glass", image: "glass", price: 10),
                   Product(name: "Papers", image: "paper", price: 10),
                   Product(name: "Metals", image: "metals", price: 10),
                   Product(name: "Electronics", image: "electronics", price: 1000)]
