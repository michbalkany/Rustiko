//
//  RewardsCardSheetView.swift
//  Rustiko
//
//  Created by Micah Njeru on 30/05/2024.
//

import SwiftUI

struct RewardsCardSheetView: View {
    // Sheet Dismissal variable
    @Environment (\.dismiss) private var dismiss
    
    var body: some View {
        
        NavigationStack {
            VStack(alignment: .center){
                Spacer()
                
                // Center Text
                Text("While in store, use this QR Code to claim your reward points.")
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                // QR Code Image
                Image("QR Code")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .scaledToFit()
                
                Spacer()
                
                // Username display
                Text("User Name")
                
                Spacer()
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                
                // Sheet Settings
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Rustiko Rewards")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }

        }
    }
}

#Preview {
    RewardsCardSheetView()
}
