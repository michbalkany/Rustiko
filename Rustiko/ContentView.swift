//
//  ContentView.swift
//  Rustiko
//
//  Created by Mich balkany on 1/29/24.
//

import SwiftUI

struct ContentView: View {
    
    //    @State private var showMenu = false
    //    @State private var selectedTab = 0
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
        }
    }
}

#Preview {
    ContentView()
}
