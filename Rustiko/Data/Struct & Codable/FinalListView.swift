//
//  FinalListView.swift
//  Rustiko
//
<<<<<<< HEAD
//  Created by Mich balkany on 2/27/24.
=======
//  Created by Micah Njeru on 05/03/2024.
>>>>>>> 356cf42e3e92bb7120361eeb2885e01803886299
//

import SwiftUI

struct FinalListView: View {
<<<<<<< HEAD
=======
    
>>>>>>> 356cf42e3e92bb7120361eeb2885e01803886299
    let scrollList = [
        beverages,
        breakfast,
        dessert,
        dinner,
        lunch
<<<<<<< HEAD
      ]

    var body: some View {
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
=======
    ]
    
    var body: some View {
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
>>>>>>> 356cf42e3e92bb7120361eeb2885e01803886299
    }
}

#Preview {
    FinalListView()
}
