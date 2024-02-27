//
//  ScrollingOptionView.swift
//  Rustiko
//
//  Created by Mich balkany on 2/18/24.
//

import SwiftUI

struct ScrollingOptionView: View {
    
    
    let scrollList = [
        beverages,
        breakfast,
        dinner,
        dessert,
        lunch
    ]
    var menu: [Menu]
    
    var body: some View {
        NavigationStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(scrollList, id: \.self) { item in
                        VStack {
                            Button{
                                print("image tapped")
                            } label: {
                                Image("Fresh-juice")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 75)
                            }
                            NavigationLink(item[0].parentCategory ?? "None", value: item)
                        }
                    }
                    
                }
                
                List {
                    
                    // Appetizers section
                    
                    Section(header: Text("Appetizers")) {
                        ForEach(menu, id: \.self) { sample in
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
                        ForEach(menu, id: \.self) { sample in
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
                        ForEach(menu, id: \.self) { sample in
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
                        ForEach(menu, id: \.self) { sample in
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
                        ForEach(menu, id: \.self) { sample in
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
            
            
        }
        
    }
    



#Preview {
    ScrollingOptionView(menu: breakfast)
}



