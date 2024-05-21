//
//  MainView.swift
//  Rustiko
//
//  Created by Mich balkany on 5/20/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            InboxHomeView()
                .tabItem {
                    Label("Inbox", systemImage: "envelope")
                }
            
            Home()
                .tabItem {
                    Label("Order", systemImage: "bag")
                }
            
            TabBarView(filter: .reserve)
                .tabItem {
                    Label("Reserve", systemImage: "fork.knife")
                }
            
            TabBarView(filter: .help)
                .tabItem {
                    Label("Help", systemImage: "bubble.left.and.bubble.right")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    MainView()
}
