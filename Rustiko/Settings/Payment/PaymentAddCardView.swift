//
//  PaymentAddCardView.swift
//  Rustiko
//
//  Created by Micah Njeru on 03/02/2024.
//

import SwiftUI

struct PaymentAddCardView: View {
    
    @State private var cardNumber: Int = 0
    @State private var monthYear: Int = 00
    @State private var cvv: Int = 0
    var body: some View {
        VStack(alignment: .center){
            // Title
            Text("Add Card")
                .font(.title)
                .padding()
            
            // Description
            Text("Enter card details here. Click save once done.")
                .padding()
                .multilineTextAlignment(.center)
            
            // Text Boxes
            VStack(alignment: .center){
                // Card Number
                TextField("Card Number", value: $cardNumber, format: .number)
                    .foregroundStyle(.gray)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    )
                    .padding(.bottom)
                
                // Month Year
                TextField("MonthYear", value: $monthYear, format: .number)
                    .foregroundStyle(.gray)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    )
                    .padding(.bottom)
                
                // CVV
                TextField("CVV", value: $cvv, format: .number)
                    .foregroundStyle(.gray)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue, lineWidth: 2)
                    )
                    .padding(.bottom)
            }
            .padding()
            
            Spacer()
            // Save Card Button
            Button("Save Card"){
                // Insert Button Function here
            }
            .padding()
        }
    }
}

#Preview {
    PaymentAddCardView()
}
