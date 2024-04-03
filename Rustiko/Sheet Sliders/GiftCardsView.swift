//
//  GiftCardsView.swift
//  Rustiko
//
//  Created by Micah Njeru on 02/02/2024.
//

import SwiftUI

struct GiftCardsView: View {
    
    // Sheet property
    @State private var showingSheet = false
    
    var body: some View {
        
        // Button for showing Sheet
        Button("Gift card"){
            showingSheet.toggle()
        }
        .popover(isPresented: $showingSheet) {
            
            // Sheet View
            VStack(alignment: .center) {
                
                // Title
                Text("Gift Cards")
                    .font(.title)
                    .padding(20)
                
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
                            // Insert Button Function Here
                        }
                        .padding()
                        
                        Spacer()
                        
                        Button("Add an Existing Card") {
                            // Insert Button Function Here
                        }
                        .padding()
                    }
                    .padding()
                    
                    // Bottom Button
                    Button("Purchase a Gift Card") {
                        // Insert Button Function Here
                    }
                }
                
                    // Sheet Settings
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

#Preview {
    GiftCardsView()
}
