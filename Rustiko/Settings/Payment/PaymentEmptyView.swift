//
//  PaymentEmptyView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct PaymentEmptyView: View {
    
    // Card sheet attributes
    @State private var showingCardSheet = false
    
    var body: some View {
        VStack(alignment: .center){
            // Title
            Text("Payment")
                .font(.largeTitle)
                .padding()
            
            // Description
            Text("Cards you add with appear here. Click on them to edit or remove.")
                .padding()
                .multilineTextAlignment(.center)
            
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
        }
    }
}

#Preview {
    PaymentEmptyView()
}
