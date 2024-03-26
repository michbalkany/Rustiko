//
//  PromoCardView.swift
//  Rustiko
//
//  Created by Micah Njeru on 02/02/2024.
//

import SwiftUI

struct PromoCardView: View {
    
    // Sheet property
    @State private var showingSheet = false
    
    // Promocode text field property
    @State private var promoCode:String = ""
    
    var body: some View {
        
        // Button for showing sheet
        Button("Promo Code") {
            showingSheet.toggle()
        }
        .popover(isPresented: $showingSheet){
            VStack(alignment: .center) {
                
                // Title
                Text("Enter Promo Code")
                    .font(.title)
                    .padding(20)
                
                // Text Box
                VStack(alignment: .center){
                    TextField("Enter promo code", text: $promoCode)
                        .foregroundStyle(.gray)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.blue, lineWidth: 2)
                        )
                    
                    // Submit Button
                    Button("Submit"){
                        // Insert Button Function Here
                    }
                    .padding()
                    
                    Spacer()
                    // Scan Button
                    Button("Scan Promo Code"){
                        // Insert Button Function Here
                    }
                }
                .padding()
                
                // Sheet Settings
                .presentationDetents([.large])
                .presentationDragIndicator(.visible)
            }
        }
    }
}

#Preview {
    PromoCardView()
}
