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
        
        NavigationStack {    
            // Push the Button to the bottom of the view
            Spacer()
            // Button for showing Sheet
            Button("Gift card"){
                showingSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .popover(isPresented: $showingSheet) {
                GiftCardsSheetView()
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
    GiftCardsView()
}
