//
//  SettingsView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            // List of Settings
            List {
                // Privacy and Security
                Button {
//                    PrivacyAndSecurityView()
                } label: {
                    Text("Privacy and Security")
                }
                
                // Payment
                Button {
//                    PaymentWithCardView()
                } label: {
                    Text("Payment")
                }
                
                // Account Preferences
                Button {
//                    AccountPreferencesView()
                } label: {
                    Text("Account Preferences")
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
