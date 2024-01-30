//
//  SideMenuRowView.swift
//  Rustiko
//
//  Created by Mich balkany on 1/29/24.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionsModel
    
    var body: some View {
        HStack {
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
            
            
            
        }
        .padding(.leading)
        .frame(height: 44)
    }
}

#Preview {
    SideMenuRowView(option: .locations)
}
