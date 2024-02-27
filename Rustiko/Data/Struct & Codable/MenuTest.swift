//
//  MenuTest.swift
//  Rustiko
//
//  Created by Micah Njeru on 19/02/2024.
//

import SwiftUI

struct MenuTest: View {
    var menu: [Menu]
    var body: some View {
        VStack{
            List(menu, id: \.self) { item in
                Section(header: Text(item.category)){
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
