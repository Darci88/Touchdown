//
//  Shop.swift
//  Touchdown
//
//  Created by user219285 on 3/29/23.
//

import Foundation

class Shop: ObservableObject {
    
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
