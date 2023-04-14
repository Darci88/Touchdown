//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by user219285 on 3/29/23.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
