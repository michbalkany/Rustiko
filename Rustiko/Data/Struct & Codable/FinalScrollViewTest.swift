//
//  FinalScrollViewTest.swift
//  Rustiko
//
//  Created by Mich balkany on 2/27/24.
//

import SwiftUI

struct FinalScrollViewTest: View {
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
    FinalScrollViewTest(menu: beverages)
}
