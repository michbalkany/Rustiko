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
        List(menu, id: \.self) { sample in
            VStack {
                Text(sample.name)
            }
        }
    }
}

#Preview {
    MenuTest(menu: beverages)
}
