//
//  HomeLogin.swift
//  Rustiko
//
//  Created by Mich balkany on 5/16/24.
//

import SwiftUI
import Firebase

struct HomeLogin: View {
    /// User Log Status
    @AppStorage("log_Status") private var logStatus: Bool = false
    var body: some View {
        NavigationStack {
            Button("LogOut") {
                try? Auth.auth().signOut()
                logStatus = false
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeLogin()
}
