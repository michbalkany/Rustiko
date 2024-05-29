//
//  PaymentWithCardView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct PaymentWithCardView: View {
    @State private var showingCardSheet = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                // Hashed Card Number
                Text("XXXX XXXX XXXX XX34")
                    .padding()
                    .font(.title)
                
                // Card Expiry Date
                Text("01/24")
                    .padding()
                    .font(.title2)
            }
            .frame(width: 350, height: 200)
            .background(.blue)
            .clipShape(
                RoundedRectangle(cornerRadius: 20)
            )
            .padding()
            Spacer()
            
            // Add Card Button
            Button("Add Card"){
                showingCardSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .padding()
            .popover(isPresented: $showingCardSheet) {
                PaymentAddCardView()
                // Sheet Settings
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Your Cards")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }
        }
    }
}

#Preview {
    PaymentWithCardView()
}
