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
                TabBarView(filter: .inbox)
                    .tabItem {
                        Label("Inbox", systemImage: "envelope")
                    }
                
                TabBarView(filter: .order)
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
        
            
            //            ZStack {
            //                TabView(selection: $selectedTab) {
            //                    Text("HOME")
            //                        .tag(0)
            //
            //                    Text("REWARDS CARD")
            //                        .tag(1)
            //
            //                    Text("ENTER CODE")
            //                        .tag(2)
            //
            //                    Text("LOCATIONS")
            //                        .tag(3)
            //
            //                    Text("CATERING")
            //                        .tag(4)
            //
            //                        Text("GIFT CARDS")
            //                             .tag(5)
            //
            //                             Text("SETTINGS")
            //                         .tag(6)
            //
            //                }
            //                    SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            ////                TabBarView()
            //            }
            //            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            //            .navigationTitle("HOME")
            //            .navigationBarTitleDisplayMode(.inline)
            //            .toolbar {
            //                ToolbarItem(placement: .topBarLeading) {
            //                    Button(action: {
            //                        showMenu.toggle()
            //                    }, label: {
            //                        Image(systemName: "line.3.horizontal")
            //                    })
            //                }
            //            }
            
        
    }
}

#Preview {
    ContentView()
}
