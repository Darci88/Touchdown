//
//  ProductItemView.swift
//  Touchdown
//
//  Created by user219285 on 3/29/23.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //MARK: - Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //zstack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(10)
            
            //MARK: - Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //MARK: - Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
    }
}
