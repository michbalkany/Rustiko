//
//  InboxHomeView.swift
//  Rustiko
//
//  Created by Micah Njeru on 01/02/2024.
//

import SwiftUI

struct InboxHomeView: View {
    var body: some View {
        NavigationStack {
            List {
                // Message bubble 1
                HStack (alignment: .top) {
                    Image("Brown bun burger")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    
                    // Text section
                    VStack (alignment: .leading) {
                        Text("Message Title")
                            .font(.title2)
                        Text("Message description and more description and more description.")
                            .font(.subheadline)
                            .lineLimit(2)
                            .truncationMode(.tail)
                    }
                }
                // Message bubble 2
                HStack (alignment: .top) {
                    Image("Brown bun burger")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    
                    // Text section
                    VStack (alignment: .leading) {
                        Text("Message Title")
                            .font(.title2)
                        Text("Message description and more description and more description.")
                            .font(.subheadline)
                            .lineLimit(2)
                            .truncationMode(.tail)
                    }
                }
                // Message bubble 3
                HStack (alignment: .top) {
                    Image("Brown bun burger")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    
                    // Text section
                    VStack (alignment: .leading) {
                        Text("Message Title")
                            .font(.title2)
                        Text("Message description and more description and more description.")
                            .font(.subheadline)
                            .lineLimit(2)
                            .truncationMode(.tail)
                    }
                }
                // Message bubble 4
                HStack (alignment: .top) {
                    Image("Brown bun burger")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    
                    // Text section
                    VStack (alignment: .leading) {
                        Text("Message Title")
                            .font(.title2)
                        Text("Message description and more description and more description.")
                            .font(.subheadline)
                            .lineLimit(2)
                            .truncationMode(.tail)
                    }
                }
                // Message bubble 5
                HStack (alignment: .top) {
                    Image("Brown bun burger")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    
                    // Text section
                    VStack (alignment: .leading) {
                        Text("Message Title")
                            .font(.title2)
                        Text("Message description and more description and more description.")
                            .font(.subheadline)
                            .lineLimit(2)
                            .truncationMode(.tail)
                    }
                }
            }
            .navigationTitle("Inbox")
        }
    }
}

#Preview {
    InboxHomeView()
}
