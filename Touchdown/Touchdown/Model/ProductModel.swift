//
//  ProductModel.swift
//  Touchdown
//
//  Created by user219285 on 3/29/23.
//

import Foundation

struct Product: Identifiable, Codable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var formattedPrice: String { return "$\(price)" }
}
