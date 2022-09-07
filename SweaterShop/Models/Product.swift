//
//  Product.swift
//  SweaterShop
//
//  Created by user224010 on 9/3/22.
//

import Foundation

struct Product: Identifiable{
    
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    
}

var productList = [Product( name: "Sweater 1", image: "sweater1", price: 54),
                   Product( name: "Sweater 2", image: "sweater2", price: 134),
                   Product( name: "Sweater 3", image: "sweater3", price: 74),
                   Product( name: "Sweater 4", image: "sweater4", price: 84),
                   Product( name: "Sweater 5", image: "sweater5", price: 104),
                   Product( name: "Sweater 6", image: "sweater6", price: 175),
                   Product( name: "Sweater 7", image: "sweater7", price: 89),
                   Product( name: "Sweater 8", image: "sweater8", price: 135)

]
	
