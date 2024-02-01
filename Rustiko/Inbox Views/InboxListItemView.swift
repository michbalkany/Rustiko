//
//  InboxListItemView.swift
//  Rustiko
//
//  Created by Micah Njeru on 01/02/2024.
//

import SwiftUI

struct InboxListItemView: View {
    
    let message: String
    
    var body: some View {
        // Message bubble 1
        HStack (alignment: .top) {
            Image("Brown bun burger")
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            
            // Text section
            VStack (alignment: .leading) {
                Text(message)
                    .font(.title3)
                Text("Message description, more description and more description.")
                    .font(.subheadline)
                    .lineLimit(2)
                    .truncationMode(.tail)
            }
        }
    }
}

#Preview {
    InboxListItemView(message: "Sample")
}
