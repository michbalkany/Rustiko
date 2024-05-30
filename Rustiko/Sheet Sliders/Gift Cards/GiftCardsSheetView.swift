//
//  GiftCardsSheetView.swift
//  Rustiko
//
//  Created by Micah Njeru on 30/05/2024.
//

import SwiftUI

struct GiftCardsSheetView: View {
    // Sheet Dismissal variable
    @Environment (\.dismiss) private var dismiss
    
    var body: some View {
        
        NavigationStack{
            // Sheet View
            VStack(alignment: .center) {
                // Center Text
                Text("You can sign up for a card, which will allow you to load value and earn special rewards.")
                    .padding()
                    .multilineTextAlignment(.center)
                Spacer()
                
                // Buttons
                VStack (alignment: .center) {
                    
                    // Top Buttons
                    HStack {
                        Button("Send a Gift Card"){
                            dismiss()
                        }
                        .buttonStyle(.borderedProminent)
                        
                        Spacer()
                        
                        Button("Add Existing Card") {
                            dismiss()
                        }
                        .buttonStyle(.borderedProminent)
                        .padding()
                    }
                    .padding()
                    
                    // Bottom Button
                    Button("Purchase a Gift Card") {
                        dismiss()
                    }
                    .buttonStyle(.borderedProminent)
                }
                
                // Sheet Settings
                .presentationDetents([.large])
                .presentationDragIndicator(.visible)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Gift Cards")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }
        }
    }
}

#Preview {
    GiftCardsSheetView()
}
