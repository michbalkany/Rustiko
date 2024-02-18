//
//  ScrollingOptionView.swift
//  Rustiko
//
//  Created by Mich balkany on 2/18/24.
//

import SwiftUI

struct ScrollingOptionView: View {
    let scrollList = [
    "Featured",
    "All day breakfast",
    "Lunch",
    "Appetizers",
    "Coffee & Tea",
    "Bakery",
    "Salads",
    "Plates",
    "Sandwiches & Wraps",
    "Cold beverages",
    "Sauces & Sides",
    "Desserts"
    ]
    
    var body: some View {
        
        ScrollView(.horizontal) {
                  LazyHStack {
      
                      ForEach(0...11, id: \.self) { i in
                      Circle()
                          .frame(width: 75, height: 75)
      
                      }
                      
                  }
              }
        
    }
}

#Preview {
    ScrollingOptionView()
}
