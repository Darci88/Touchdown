//
//  BrandItemView.swift
//  Touchdown
//
//  Created by user219285 on 3/29/23.
//

import SwiftUI

struct BrandItemView: View {
    let brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(10))
            .background(RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .background(colorBackground)
    }
}
