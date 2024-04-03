//
//  FinalListView.swift
//  Rustiko
//

//  Created by Mich balkany on 2/27/24.

//  Created by Micah Njeru on 05/03/2024.

import SwiftUI

struct FinalListView: View {


    

    let scrollList = [
        beverages,
        breakfast,
        dessert,
        dinner,
        lunch

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

    }
}

#Preview {
    FinalListView()
}
