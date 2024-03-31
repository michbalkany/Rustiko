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
        // Edit Button Stack
        HStack{
            Spacer()
            
            // Edit Button
            Button("Edit"){
                showingEdit.toggle()
            }
            .padding(.trailing)
            .popover(isPresented: $showingEdit){
                PrivacyAndSecurityEditView()
                // Sheet Settings
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
            }
        }
        
        VStack(alignment: .center){
            // Title
            Text("Privacy & Security")
                .font(.largeTitle)
                .padding()
            
            // FaceID Stack
            VStack{
                // FaceID Toggle
                Toggle("Login with FaceID", isOn: $faceID)
                    .padding()
            }
            
            Divider()
                .padding()
            
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
        Spacer()
    }
}

#Preview {
    PrivacyAndSecurityView()
}
