//
//  JSONViewTest.swift
//  Rustiko
//
//  Created by Micah Njeru on 14/02/2024.
//

import SwiftUI

struct JSONViewTest: View {
    let scrollList = [
        beverages,
        breakfast,
        dessert,
        dinner,
        lunch
    ]
    
    var body: some View {
        NavigationStack {
            List(scrollList, id: \.self) { item in
                NavigationLink(item[0].parentCategory ?? "None", value: item)
            }
            .navigationDestination(for: [Menu].self, destination: MenuTest.init)
            
        }
        
        //        // Beverages
        //        Text("\(beverages[0].price)")
        //
        //        // Breakfast
        //        Text("\(breakfast[0].name)")
        //
        //        // Dessert
        //        Text("\(dessert[0].childCategory ?? "None")")
        //
        //        // Dinner
        //        Text("\(dinner[0].description ?? "None")")
        //
        //        // Lunch
        //        Text("\(lunch[0].id)")
        //
        //        // Breakfast
        //        Text("\(beverages[43].description ?? "Something else")")
        
    }
}

#Preview {
    JSONViewTest()
}
