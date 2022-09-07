//
//  CartManager.swift
//  SweaterShop
//
//  Created by user224010 on 9/5/22.
//

import Foundation

class CartManager: ObservableObject	{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeToCart(product: Product){
        products = products.filter { $0.id != product.id}
        total -= product.price
    }
}
	
