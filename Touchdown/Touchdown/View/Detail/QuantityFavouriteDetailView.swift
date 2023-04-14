//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by user219285 on 3/29/23.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
           Button(action: {
               if counter > 0 {
                   feedback.impactOccurred()
                   counter -= 1
               }
           }, label: {
               Image(systemName: "minus.circle")
                   .foregroundColor(counter == 0 ? .secondary : .primary)
           })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 35)
            
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(counter == 100 ? .secondary : .primary)
            })
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        } //Hstack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
    }
}
