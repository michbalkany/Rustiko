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
        
        ScrollView(.horizontal) {
                  LazyHStack {
      
                      ForEach(scrollList, id: \.self) { item in
                          VStack {
                              Circle()
                                  .frame(width: 75, height: 75)
                              Text(String("\(item[0].parentCategory ?? "None")"))
                          }
                      }
                      
                  }
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
