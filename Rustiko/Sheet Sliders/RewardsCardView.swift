//
//  RewardsCardView.swift
//  Rustiko
//
//  Created by Micah Njeru on 02/02/2024.
//

import SwiftUI

struct RewardsCardView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Rewards"){
            showingSheet.toggle()
        }
        .popover(isPresented: $showingSheet) {
            VStack(alignment: .center){
                // Title
                Text("Rustiko Rewards")
                    .font(.title)
                    .padding(20)
                
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
                
                    // Sheet Settings
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

#Preview {
    RewardsCardView()
}
