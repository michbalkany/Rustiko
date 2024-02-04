//
//  AccountPreferencesView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct AccountPreferencesView: View {
    
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
                    
                    // User details
                    HStack {
                        Text("First Name: ")
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Text("Last Name: ")
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Text("Email: ")
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Text("Phone Number: ")
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Text("Gender: ")
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        Text("Date of Birth: ")
                            .padding()
                        Spacer()
                    }
                    
                    // Divider Section
                    Divider()
                        .padding()
                    
                    // Toggle Title
                    HStack {
                        Spacer()
                        Text("Location & Notifications")
                            .font(.title3)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    // Toggle Settings
                    VStack {
                        Toggle("Location", isOn: $location)
                            .padding()
                        Toggle("Notifications", isOn: $notification)
                            .padding()
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
