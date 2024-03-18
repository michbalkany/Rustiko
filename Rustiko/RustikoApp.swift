//
//  RustikoApp.swift
//  Rustiko
//
//  Created by Mich balkany on 1/29/24.
//

import SwiftUI
import SwiftData
import Firebase

@main
struct RustikoApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
//            OrderView()
//            AccountPreferencesView()
<<<<<<< HEAD
//            JSONViewTest()
            Home()
=======
              AuthHomeView()
//            JSONViewTest()
>>>>>>> main
        }
        .modelContainer(for: SwiftDataMenuModel.self)
    }
}
