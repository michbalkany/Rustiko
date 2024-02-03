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
            List {
                // List of Settings
                Text("Account Preferences")
                Text("Payment")
                Text("Privacy & Security")
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
