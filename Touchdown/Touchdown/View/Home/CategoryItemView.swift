//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by user219285 on 3/29/23.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - Properties
    let category: Category
    
    //MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 5) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1))
        })
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .background(colorBackground)
    }
}

