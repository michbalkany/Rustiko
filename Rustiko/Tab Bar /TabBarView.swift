//
//  TabBarView.swift
//  Rustiko
//
//  Created by Mich balkany on 2/4/24.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab: Int = 0
    

    
    var body: some View {
        TabView(selection: $selectedTab) {
//            Button("show tab 1") {
//                selectedTab = "Two"
//            }
            NavigationStack {
                    InboxHomeView()
            }
                    .tabItem {
                        Label("Inbox", systemImage: "envelope")
                    }
                    .tag(0)
            
            NavigationStack {
                OrderView()
            }
            .tabItem {
                Label("Order", systemImage: "bag")
            }
            .tag(1)
        
        Text("Tab 3")
            .tabItem {
                Label("Help", systemImage: "bubble.left.and.bubble.right")
            }
            .tag(2)
            
        
//            SideMenuView(isShowing: true, selectedMenuTab: $selectedMenuTab  )
            Text("Tab 4")
                .tabItem {
                    Label("Reserve", systemImage: "fork.knife")
                }
                .tag(3)

        }
        .tabViewStyle(.automatic)
    }
}

#Preview {
    TabBarView()
}
