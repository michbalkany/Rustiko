//
//  JSONViewTest.swift
//  Rustiko
//
//  Created by Micah Njeru on 14/02/2024.
//

import SwiftUI

struct JSONViewTest: View {
    var body: some View {
        // Beverages
        Text("\(beverages[0].price)")
        
        // Breakfast
        Text("\(breakfast[0].name)")
        
        // Dessert
        Text("\(dessert[0].childCategory ?? "None")")
        
        // Dinner
        Text("\(dinner[0].description ?? "None")")
        
        // Lunch
        Text("\(lunch[0].id)")
        
        // Breakfast
        Text("\(beverages[43].description ?? "Something else")")
    }
}

#Preview {
    JSONViewTest()
}
