//
//  InboxMessageView.swift
//  Rustiko
//
//  Created by Micah Njeru on 01/02/2024.
//

import SwiftUI

struct InboxMessageView: View {
    
    // Message property
    let message: String
    
    var body: some View {
        VStack (alignment: .leading) {
            // Image
            Image("caesar salad")
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
            // Message Title
            Text(message)
                .font(.largeTitle)
                .padding()
            
            // Message Body
            Text("Message description, more description and more description.")
                .padding(.leading)
                .padding(.trailing)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    InboxMessageView(message: "Sample")
}
