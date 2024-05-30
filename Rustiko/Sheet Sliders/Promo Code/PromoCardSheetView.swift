//
//  PromoCardSheetView.swift
//  Rustiko
//
//  Created by Micah Njeru on 30/05/2024.
//

import SwiftUI

struct PromoCardSheetView: View {
    // Sheet Dismissal variable
    @Environment (\.dismiss) private var dismiss
    
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .center) {
                // Title
                Text("Enter Promo Code")
                    .font(.title)
                    .padding(20)
                
                // Text Box
                VStack(alignment: .center){
//                    TextField("Enter promo code", text: $promoCode)
//                        .foregroundStyle(.gray)
//                        .padding()
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 10)
//                                .stroke(.blue, lineWidth: 2)
//                        )
                    
                    // Submit Button
                    Button("Submit"){
                        dismiss()
                    }
                    .padding()
                    
                    Spacer()
                    // Scan Button
                    Button("Scan Promo Code"){
                        dismiss()
                    }
                }
                .padding()
                
                // Sheet Settings
                .presentationDetents([.large])
                .presentationDragIndicator(.visible)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Promo Codes")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }

        }
    }
}

#Preview {
    PromoCardSheetView()
}
