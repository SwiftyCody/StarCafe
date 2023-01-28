//
//  StarCafeApp.swift
//  StarCafe
//
//  Created by Cody on 2023/01/16.
//

import SwiftUI

@main
struct StarCafeApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .accentColor(.green)
        }
    }
}
