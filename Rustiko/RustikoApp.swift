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
//            AccountPreferencesView()
//            JSONViewTest()
//            Home()


            //  AuthHomeView()
// 78e846c757836a3430a901d36bc320c49e3c0dfe
//            JSONViewTest()
        }
        .modelContainer(for: SwiftDataMenuModel.self)
    }
}
