//
//  ScrollViewTest.swift
//  Rustiko
//
//  Created by Micah Njeru on 05/03/2024.
//

import SwiftUI

struct ScrollViewTest: View {
    // Insert a sample list (beverages in this case in the preview)
    let menu: [Menu]
    
    var body: some View {
        ScrollViewReader { value in
            ScrollView {
                Button("Jump to #5") {
                    value.scrollTo(5, anchor: .top)
                }
                .padding()
                
                ForEach(menu, id: \.self) { item in
                    Text(item.category)
                        .font(.title)
                        .frame(width: 200, height: 200)
                        .id(item.id)
                }
            }
        }
    }
}

#Preview {
    ScrollViewTest(menu: beverages)
}
