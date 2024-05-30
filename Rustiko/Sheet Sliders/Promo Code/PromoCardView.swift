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
        
        NavigationStack{
            // Button for showing sheet
            Button("Promo Code") {
                showingSheet.toggle()
            }
            .popover(isPresented: $showingSheet){
                PromoCardSheetView()
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
    PromoCardView()
}
