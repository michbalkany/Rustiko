//
//  OrderView.swift
//  Rustiko
//
//  Created by Mich balkany on 2/4/24.
//

import SwiftUI

struct OrderView: View {
    
    let foodImages = [
    "Brown-bun-burger",
    "milkshake",
    "kebab-plate",
    "Delicious-food-scene",
    "French-fries"
    ]
    
    var body: some View {
        
        VStack(alignment: .center) {
            ScrollingOptionView()
            Text("Menu")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(foodImages, id:\.self) { foodImage in
                        VStack(alignment: .trailing, spacing: 15) {
                            Button {
                                // plus button tapped
                            } label: {
                                Image(systemName: "plus")
                            }
                            Image(foodImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 150)
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Text("Breakfast Special")
                                    
                                    Spacer()
                                    
                                    Text("$17.99 ")
//                                        .padding()
                                }
                                
                                Text("2 eggs with bell peppers and tomato ragu")
                                    .foregroundColor(.gray)
                            }
                            .font(.subheadline)
                        }
                }
                    .padding()
                    // make this text aligned on the trailing edge
                        
                            
    //                Text("$17.99 Delivery Fee | 15 - 30 min")
                }
            }
        }
        
        
    }
}

#Preview {
    OrderView()
}
