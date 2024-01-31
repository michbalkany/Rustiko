//
//  ContentView.swift
//  Rustiko
//
//  Created by Mich balkany on 1/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu = false
    @State private var selectedTab = 0
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab) {
                    Text("HOME")
                        .tag(0)
                    
                    Text("REWARDS CARD")
                        .tag(1)
                    
                    Text("ENTER CODE")
                        .tag(2)
                    
                    Text("LOCATIONS")
                        .tag(3)
                    
                    Text("CATERING")
                        .tag(4)
                  
//                    Text("GIFT CARDS")
//                        .tag(5)
                   
//                    Text("SETTINGS")
//                        .tag(6)

                }
                    SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar) 
            .navigationTitle("HOME")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
