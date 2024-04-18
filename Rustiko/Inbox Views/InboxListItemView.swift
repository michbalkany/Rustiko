//
//  InboxListItemView.swift
//  Rustiko
//
//  Created by Micah Njeru on 01/02/2024.
//

import SwiftUI

struct InboxListItemView: View {
    
    // Message property
    let message: String
    
    var body: some View {
        
        // List Message Format
        HStack (alignment: .top) {
            
            // Image Section
            Image("caesar salad")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            
            // Text section
            VStack (alignment: .leading) {
                
                // Message Title
                Text(message)
                    .font(.title3)
                
                // Message Body
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
