//
//  SideMenuView.swift
//  Rustiko
//
//  Created by Mich balkany on 1/29/24.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
                if isShowing {
                    Rectangle()
                        .opacity(0.3)
                        .ignoresSafeArea()
                        .onTapGesture { isShowing.toggle() }
    
                    HStack {
                        VStack(alignment: .leading, spacing: 32) {
                            SideMenuHeaderView()
    
                            Spacer()
                        }
                        .padding()
                        .frame(width: 270, alignment: .leading)
                        .background(.white)
    
                        Spacer()
                    }
                }
            }
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut, value: isShowing)
        }
    }

#Preview {
    SideMenuView(isShowing: .constant(true))
}

