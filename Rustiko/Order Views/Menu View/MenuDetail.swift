//
//  MenuDetail.swift
//  Rustiko
//
//  Created by Micah Njeru on 15/04/2024.
//

import SwiftUI

struct MenuDetail: View {
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
        }
        .ignoresSafeArea()
        Spacer()
    }
}

#Preview {
    MenuDetail()
}
