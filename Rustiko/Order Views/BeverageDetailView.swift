//
//  BeverageDetailView.swift
//  Rustiko
//
//  Created by Mich balkany on 2/20/24.
//

import SwiftUI

struct BeverageDetailView: View {
    let beverage: [Menu]
    
    var body: some View {
        List {
            
            // Juices & Smoothies header
            
            Section(header: Text("Juices & smoothies")) {
                ForEach(beverage, id: \.self) { sample in
                    if sample.childCategory == "juices & smoothies" {
                        VStack(alignment: .leading) {
                            Image ( "Brown-bun-burger")
                                .resizable()
                                .frame(width: 200, height: 150)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                            Text(sample.name)
                        }
                    }
                }
            }
            
            // White and Rose section
            Section(header: Text("White and rose")) {
                ForEach(beverage, id: \.self) { sample in
                    if sample.childCategory == "white and rose" {
                        VStack {
                            // image section
                            Image ("Brown-bun-burger")
                                .resizable()
                                .frame(width: 200, height: 150)
                                .clipShape (
                                    RoundedRectangle(cornerRadius: 10)
                                )
                            // text section
                            Text(sample.name)
                        }
                    }
                }
            }
            
            // coffe and tea bar Section
            Section(header: Text("coffee & tea bar")) {
                ForEach(beverage, id: \.self) { sample in
                    if sample.childCategory == "coffee & tea bar" {
                        VStack {
                            Image ("latte-coffee-cup")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 150)
                                .clipShape (
                                    RoundedRectangle(cornerRadius: 10)
                                )
                            Text(sample.name)
//                            Text(sample.description ?? "none")
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    BeverageDetailView(beverage: beverages)
}
