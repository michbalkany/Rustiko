//
//  ContentView.swift
//  Rustiko
//
//  Created by Mich balkany on 1/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                //                SideMenuView(isShowing: $showMenu)
            }
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
