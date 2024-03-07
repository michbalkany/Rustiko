//
//  ScrollViewV1.swift
//  Rustiko
//
//  Created by Micah Njeru on 07/03/2024.
//

import SwiftUI

struct ScrollViewV1: View {
    // List of menus
    let scrollList = [
        beverages,
        breakfast,
        dessert,
        dinner,
        lunch
    ]

    // Test menu
    let menu: [Menu]
    
    var body: some View {
        VStack {
            // Top ScrollView
            ScrollViewReader { value in
                ScrollView {
                    Button("Jump to #5") {
                        value.scrollTo(5, anchor: .top)
                    }
                    .padding()
                    
                    ForEach(menu, id: \.self) { item in
                        Text(item.category)
                            .font(.title)
                            .frame(width: 200, height: 200)
                            .id(item.id)
                    }
                }
            }
            
            // List of menu items & sections
            ScrollViewReader { test in
                ScrollView {
                    Button("Jump to red wines") {
                        test.scrollTo(10, anchor: .top)
                    }
                    .padding()
                    
                    ForEach(scrollList, id: \.self) { menu in
                        ForEach(menu, id: \.self) { sample in
                            Section(header: Text(sample.category)) {
                                ForEach(sample.item) { food in
                                    Text(food.name)
                                }
                            }
                        }
                    }
                }
            }
            
            // Create a general List
            List {
                // Loop through the actual JSON files
                ForEach(scrollList, id: \.self) { menu in
                    // Loop through the Menu Categories in the JSON file
                    ForEach(menu, id: \.self) { item in
                        // Add the Section title per category
                        Section(header: Text(item.category)) {
                            // Loop through the specific menu items per category
                            ForEach(item.item) { food in
                                // Display the food items and modify view as needed
                                Text(food.name)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewV1(menu: beverages)
}
