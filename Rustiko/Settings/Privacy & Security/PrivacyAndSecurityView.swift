//
//  PrivacyAndSecurityView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct PrivacyAndSecurityView: View {
    
    // PrivacyAndSecurityView attributes
    @State private var faceID = false
    @State private var showingEdit = false
    
    var body: some View {
        NavigationStack {
            VStack {
                // FaceID Toggle
                Toggle("Login with FaceID", isOn: $faceID)
                    .padding()
                
                Divider()
                
                // Address Stack
                HStack{
                    Text("Address: ")
                        .padding()
                    Spacer()
                }
                
                // Apartment Stack
                HStack{
                    Text("Apartment: ")
                        .padding()
                    Spacer()
                }
            }
            
            // Pushes Content to the top
            Spacer()
            .navigationTitle("Privacy & Security")
        }
        
        // Edit Button Stack
        HStack{
            // Edit Button
            Button("Edit"){
                showingEdit.toggle()
            }
            .buttonStyle(.borderedProminent)
            .padding(.trailing)
            .popover(isPresented: $showingEdit){
                PrivacyAndSecurityEditView()
                // Sheet Settings
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

#Preview {
    PrivacyAndSecurityView()
}
