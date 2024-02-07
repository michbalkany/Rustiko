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
            Text("Hello World")
                .navigationTitle(title)
        }
    }
}

#Preview {
    TabBarView(filter: .inbox)
}
