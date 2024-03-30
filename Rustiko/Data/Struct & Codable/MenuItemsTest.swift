//
//  MenuTest.swift
//  Rustiko
//
//  Created by Micah Njeru on 19/02/2024.
//

import SwiftUI

struct MenuTest: View {
    
    // Menu Attribute
    var menu: [Menu]
    
    var body: some View {
        VStack{
            
            // Loop through the JSON menu
            List(menu, id: \.self) { item in
                
                // Section Header Text
                Section(header: Text(item.category)){
                    
                    // Loop and display all food items in that section
                    ForEach(item.item) { food in
                        Text(food.name)
                    }
                }
            }
        }
    }
}

#Preview {
    MenuTest(menu: beverages)
}


// test view for menu items
