//
//  ProfileView.swift
//  Rustiko
//
//  Created by Mich balkany on 3/12/24.
//

import SwiftUI
import Firebase

struct ProfileView: View {
    @AppStorage("log_status") private var logStatus: Bool = false
    var body: some View {
        NavigationStack {
            Button("Logout") {
                try? Auth.auth().signOut()
                logStatus = false
            }
            .navigationTitle("Hello(user's name)")
        }
    }
}

#Preview {
    ProfileView()
}
