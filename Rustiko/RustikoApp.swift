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
    var body: some Scene {
        WindowGroup {
//            OrderView()
//            AccountPreferencesView()
//            JSONViewTest()
            ScrollViewV1(menu: beverages)
        }
        .modelContainer(for: SwiftDataMenuModel.self)
    }
}
