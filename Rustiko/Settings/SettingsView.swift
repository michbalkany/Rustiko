//
//  SettingsView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI
import Firebase

struct SettingsView: View {
    @AppStorage("log_Status") private var logStatus: Bool = false
    var body: some View {
        NavigationStack {
            // List of Settings
            List {
                // Privacy and Security
                NavigationLink {
                    PrivacyAndSecurityView()
                } label: {
                    Text("Privacy and Security")
                }
                
                // Payment
                NavigationLink {
                    PaymentWithCardView()
                } label: {
                    Text("Payment")
                }
                
                // Account Preferences
                NavigationLink {
                    AccountPreferencesView()
                } label: {
                    Text("Account Preferences")
                }
            }
            
            VStack {
                // Logout Button
                Button("LogOut") {
                    try? Auth.auth().signOut()
                    logStatus = false
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
