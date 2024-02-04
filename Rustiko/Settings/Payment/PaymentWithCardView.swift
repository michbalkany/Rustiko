//
//  PaymentWithCardView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct PaymentWithCardView: View {
    var body: some View {
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
    }
}

#Preview {
    PaymentWithCardView()
}
