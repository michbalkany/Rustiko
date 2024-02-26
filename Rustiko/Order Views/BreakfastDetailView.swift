//
//  BreakfastDetailView.swift
//  Rustiko
//
//  Created by Mich balkany on 2/21/24.
//

import SwiftUI

struct BreakfastDetailView: View {
//    let breakfasts: [Menu]
    var breakfast: [Menu]
    
    var body: some View {
        
        List {
            
            // Appetizers section
            
            Section(header: Text("Appetizers")) {
                ForEach(breakfast, id: \.self) { sample in
                    if sample.childCategory == "appetizers" {
                        VStack(alignment: .leading) {
                            Image ( "Brown-bun-burger")
                                .resizable()
                                .frame(width: 200, height: 150)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 10)
                                )
                            Text(sample.name)
                            Text(sample.description ?? "none")
                            
                        }
                    }
                }
            }
            
            // Bakery section
            Section(header: Text("Bakery")) {
                ForEach(breakfast, id: \.self) { sample in
                    if sample.childCategory == "bakery" {
                        VStack {
                            // image section
                            Image ("Delicious-food-scene")
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
            
            // Main menu Section
            Section(header: Text("Main")) {
                ForEach(breakfast, id: \.self) { sample in
                    if sample.childCategory == "menu" {
                        VStack {
                            Image ("kebab-plate")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 150)
                                .clipShape (
                                    RoundedRectangle(cornerRadius: 10)
                                )
                            Text(sample.name)
                            Text(sample.description ?? "none")
//                                .padding()
                        }
                    }
                }
            }
            
            // coffe and tea bar Section
            Section(header: Text("coffee & tea bar")) {
                ForEach(breakfast, id: \.self) { sample in
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
            
            // Juices & Smoothies header
            
            Section(header: Text("Juices & smoothies")) {
                ForEach(breakfast, id: \.self) { sample in
                    if sample.childCategory == "juices & smoothies" {
                        VStack(alignment: .leading) {
                            Image ( "milkshake")
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
            
        }
    }
}

#Preview {
    BreakfastDetailView(breakfast: breakfast)
}
