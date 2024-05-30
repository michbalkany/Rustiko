//
//  RewardsCardView.swift
//  Rustiko
//
//  Created by Micah Njeru on 02/02/2024.
//

import SwiftUI

struct RewardsCardView: View {
    
    // Sheet property
    @State private var showingSheet = false
    
    var body: some View {
        
        NavigationStack{
            
            Spacer()
            // Button for showing Sheet
            Button("Rewards"){
                showingSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .popover(isPresented: $showingSheet) {
                RewardsCardSheetView()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Reward Cards")
                        .font(.largeTitle.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }
        }
    }
}

#Preview {
    RewardsCardView()
}
