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
           HomeView()
//           OrderView()
//            Home()


            //  AuthHomeView()
        }
        .modelContainer(for: SwiftDataMenuModel.self)
    }
}
