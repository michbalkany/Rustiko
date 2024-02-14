//
//  RustikoApp.swift
//  Rustiko
//
//  Created by Mich balkany on 1/29/24.
//

import SwiftUI
import SwiftData

@main
struct RustikoApp: App {
    
    @StateObject var menuData = MenuData()
    
    var body: some Scene {
        WindowGroup {
//            OrderView()
//            AccountPreferencesView()
            JSONViewTest()
                .environmentObject(menuData)
        }
        .modelContainer(for: SwiftDataMenuModel.self)
    }
}
