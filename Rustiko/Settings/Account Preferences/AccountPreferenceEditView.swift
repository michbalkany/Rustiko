//
//  AccountPreferenceEditView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct AccountPreferenceEditView: View {
    
    @State private var firstName:String = ""
    @State private var lastName: String = ""
    @State private var email:String = ""
    @State private var phoneNumber: String = ""
    @State private var gender: String = ""
    @State private var dateOfBirth: Date = Date.now
    
    let genderList = [
        "Other", "Male", "Female", "Not applicable"
    ]
    
    var body: some View {
        VStack(alignment: .center){
            // Title
            Text("Edit Profile")
                .font(.title)
                .padding(20)
            
            // User Profile Picture
            HStack {
                Spacer()
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 100))
                    .foregroundStyle(.blue)
                Spacer()
            }
            .padding(.bottom)
            
            // Text Boxes
            VStack(alignment: .center){
                // First Name Text Box
                TextField("First name", text: $firstName)
                    .foregroundStyle(.gray)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    )
                    .padding(.bottom)
                
                // Last Name Text Box
                TextField("Last name", text: $lastName)
                    .foregroundStyle(.gray)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    )
                    .padding(.bottom)
                
                // Email Text Box
                TextField("Email", text: $email)
                    .foregroundStyle(.gray)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    )
                    .padding(.bottom)
                
                // Phone Number Text Box
                TextField("Phone number", text: $phoneNumber)
                    .foregroundStyle(.gray)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    )
                    .padding(.bottom)
                
                // Gender Picker
                HStack{
                    Text("Gender")
                        .padding(.leading)
                    Spacer()
                    Picker("Gender", selection: $gender){
                        ForEach(genderList, id: \.self){
                            Text($0)
                        }
                    }
                }
                
                // Date Picker
                HStack{
                    Text("Date of Birth")
                        .padding(.leading)
                    Spacer()
                    DatePicker(selection: $dateOfBirth, in: ...Date.now, displayedComponents: .date){
                        
                    }
                }
                
                Spacer()
                
                // Save Button
                Button("Save"){
                    // Insert Button Function Here
                }

            }
            .padding()
        }
        Spacer()
    }
}

#Preview {
    AccountPreferenceEditView()
}
