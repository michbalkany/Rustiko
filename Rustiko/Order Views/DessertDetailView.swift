//
//  DessertDetailView.swift
//  Rustiko
//
//  Created by Mich balkany on 2/21/24.
//

import SwiftUI

struct DessertDetailView: View {
    
    let dessert: [Menu]
    
    var body: some View {
        
        
        List {
            Section(header: Text("Juices & smoothies")) {
                      ForEach(dessert, id: \.self) { sample in
                          if sample.parentCategory == "dessert" {
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

#Preview {
    DessertDetailView(dessert: dessert)
}
