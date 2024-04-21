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
            Image("\(menu.name)")
                .resizable()
                .scaledToFit()
                .frame(width: .infinity)
            
            // Menu Title
            Text(menu.name)
                .font(.title2.bold())
            
            // Menu Description
            Text(menu.description?.capitalized ?? "Served as is")
                .font(.title3)
            
            // Menu Price
            Text(String(format: "Price: $%.2f", menu.price))
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
