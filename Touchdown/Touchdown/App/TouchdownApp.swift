//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by user219285 on 3/29/23.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
