//
//  AccountPreferencesView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct AccountPreferencesView: View {
    
    // Preferences Attributes
    @State private var location = false
    @State private var notification = false
    @State private var emailNotification = false
    @State private var showingEditSheet = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Edit Button Stack
                HStack {
                    Spacer()
                    
                    // Edit Button
                    Button("Edit"){
                        showingEditSheet.toggle()
                    }
                    .padding(.trailing)
                    .popover(isPresented: $showingEditSheet){
                        AccountPreferenceEditView()
                        // Sheet Settings
                        .presentationDetents([.large])
                        .presentationDragIndicator(.visible)
                    }
                }
                
                // Middle View From Username to bottom
                VStack(alignment: .leading) {
                    // Profile Image
                    HStack {
                        Spacer()
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 100))
                            .foregroundStyle(.blue)
                        Spacer()
                    }
                    .padding(.bottom)
                    
                    // First Name
                    HStack {
                        Text("First Name: ")
                            .padding()
                        Spacer()
                    }
                    
                    // Last Name
                    HStack {
                        Text("Last Name: ")
                            .padding()
                        Spacer()
                    }
                    
                    // Email
                    HStack {
                        Text("Email: ")
                            .padding()
                        Spacer()
                    }
                    
                    // Phone number
                    HStack {
                        Text("Phone Number: ")
                            .padding()
                        Spacer()
                    }
                    
                    // Gender
                    HStack {
                        Text("Gender: ")
                            .padding()
                        Spacer()
                    }
                    
                    // Date of Birth
                    HStack {
                        Text("Date of Birth: ")
                            .padding()
                        Spacer()
                    }
                    
                    // Divider Section
                    Divider()
                        .padding()
                    
                    // Location & Notifications Section
                    HStack {
                        Spacer()
                        
                        // Top title
                        Text("Location & Notifications")
                            .font(.title3)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    // Toggle Settings
                    VStack {
                        
                        // Location toggle
                        Toggle("Location", isOn: $location)
                            .padding()
                        
                        // Notification toggle
                        Toggle("Notifications", isOn: $notification)
                            .padding()
                        
                        // Email toggle
                        Toggle("Email Notifications", isOn: $emailNotification)
                            .padding()
                        
                    }
                    
                    
                    // Push everything to the top
                    Spacer()
                }
            }
            .navigationTitle("Account Preferences")
        }
    }
}

#Preview {
    AccountPreferencesView()
}
