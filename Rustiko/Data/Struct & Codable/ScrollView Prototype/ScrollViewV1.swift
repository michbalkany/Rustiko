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
    var index = 1
    
    var body: some View {
        VStack {
            // TEST 2
            ScrollViewReader { proxy in
                VStack {
                    Button("Jump to Coffee & Tea bar") {
                        proxy.scrollTo(13, anchor: .top)
                    }
                    List {
                        // Loop through the actual JSON files
                        ForEach(scrollList, id: \.self) { menu in
                            Text(menu[0].menu)
                                .id(menu[0])
                            // Loop through the Menu Categories in the JSON file
                            ForEach(menu) { sampleMenu in
                                // Add the Section title per category
                                Text("\(sampleMenu.id) ->  \(sampleMenu.category)")
                                    .font(.title2)
                                    .fontWeight(.bold)
//                                    .id(sampleMenu.id)
                                    .padding()
                                // Loop through the specific menu items per category
//                                ForEach(sampleMenu.item) { food in
////                                     Display the food items and modify view as needed
//                                    Text(food.name)
//                                }
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
