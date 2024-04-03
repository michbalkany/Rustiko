//
//  RewardsCardView.swift
//  Rustiko
//
//  Created by Mich balkany on 4/3/24.
//

import SwiftUI

struct LoyaltyID {
    var uuid: String
    var name: String
}

struct RewardsCard: View {
    @State var currentLoyaltyId: LoyaltyID
    
    var body: some View {
        VStack(spacing: 20) {
            Text("RUSTIKO REWARDS")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.top, 40)
            
            Text("If you're completing an order with an associate, please make sure they scan your ID so we can award you loyalty points!")
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .font(.caption)
                .fontWeight(.medium)
                .padding([.leading, .trailing], 20.0)
            
            QRCodeImage(dataString: currentLoyaltyId.uuid)
                .frame(maxWidth: 300.0, alignment: .center)
                .padding()
            
            Text("\(currentLoyaltyId.name.uppercased())")
                .font(.largeTitle)
            Text("ID: \(currentLoyaltyId.uuid)")
                .font(.footnote)
        }
        Spacer()
    }
}

#Preview {
    RewardsCard(currentLoyaltyId: LoyaltyID(uuid: "1234-1234-1234", name: "John Smith"))
}


// scannable bar code
// inform user that "if you are completeing an order with an associate, please make sure they scan this id, so we can award you loyalty point!"

// underneath bar code list the name of user and token id
