//
//  InboxHomeView.swift
//  Rustiko
//
//  Created by Micah Njeru on 01/02/2024.
//

import SwiftUI

struct InboxHomeView: View {
    let messages = [
        "Message Title 1",
        "Message Title 2",
        "Message Title 3",
        "Message Title 4",
    ]
    var body: some View {
        NavigationStack {
            List (messages, id: \.self){ message in
                NavigationLink (value: message) {
                    InboxListItemView(message: message)
                }
            }
            .navigationDestination(for: String.self, destination: InboxMessageView.init)
            .navigationTitle("Inbox")
        }
    }
}

#Preview {
    InboxHomeView()
}
