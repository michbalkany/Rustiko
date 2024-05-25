//
//  PrivacyAndSecurityEditView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct PrivacyAndSecurityEditView: View {
    
    // PrivacyAndSecurityEditView attributes
    @State private var address:String = ""
    @State private var apt:String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            // Title
            Text("Address")
                .font(.title)
                .padding()
            
            // Address Text Field
            TextField("Address", text: $address)
                .foregroundStyle(.gray)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 2)
                )
                .padding(.bottom)
            
            // Apartment Text Field
            TextField("Apt", text: $apt)
                .foregroundStyle(.gray)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 2)
                )
                .padding(.bottom)
        }
        .padding()
        
        // Pushes button to the bottom
        Spacer()
        
        // Save Button
        Button("Save") {
            // Insert Button Function Here
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    PrivacyAndSecurityEditView()
}
