//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by user219285 on 3/29/23.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - Properties
    let player: Player
    
    //MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
    }
}
