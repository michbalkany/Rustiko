//
//  TabBarView.swift
//  Rustiko
//
//  Created by Mich balkany on 2/4/24.
//

import SwiftUI

struct TabBarView: View {
    enum FilterType {
        case inbox, order, reserve, help
    }

    let filter: FilterType
    
    var title: String {
        switch filter {
        case .inbox:
            "Inbox"
        case .order:
            "Order"
        case .reserve:
            "Reserve"
        case .help:
            "Help"
        }
    }
    
    var body: some View {
        NavigationStack {
            Text("hello")
//            TabView {
//                InboxHomeView()
//                    .tabItem {
//                        Label("Inbox", systemImage: "envelope")
//                    }
//                
//                OrderView()
//                    .tabItem {
//                        Label("Order", systemImage: "bag")
//                    }
//                
//                TabBarView(filter: .reserve)
//                    .tabItem {
//                        Label("Reserve", systemImage: "fork.knife")
//                    }
//                
//                TabBarView(filter: .help)
//                    .tabItem {
//                        Label("Help", systemImage: "bubble.left.and.bubble.right")
//                    }
//            }
                .navigationTitle(title)
        }
    }
}

#Preview {
    TabBarView(filter: .inbox)
}
