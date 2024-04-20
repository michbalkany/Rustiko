//
//  MenuDetail.swift
//  Rustiko
//
//  Created by Micah Njeru on 15/04/2024.
//

import SwiftUI

struct MenuDetail: View {
    
    let menu: Menu.Food
    var body: some View {
        VStack {
            // Menu Image
            Image("french fries")
                .resizable()
                .scaledToFit()
                .frame(width: .infinity)
            
            // Menu Title
            Text("French Fries")
                .font(.title2.bold())
            
            // Menu Description
            Text("Served as is")
                .font(.title3)
            
            // Menu Price
            Text("Price: $5")
                .fontWeight(.bold)
            
            // Push button to bottom of screen
            Spacer()
            
            // Add to Cart button
            Text("Add to Cart")
                .foregroundStyle(.white)
                .padding()
                .frame(width: .infinity)
                .background(.blue)
                .clipShape(
                    RoundedRectangle(cornerRadius: 20)
                )
        }
        .ignoresSafeArea()
        Spacer()
    }
}

#Preview {
    MenuDetail(menu: beverages[0].item[0])
}
