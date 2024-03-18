//
//  OffsetModifier.swift
//  Rustiko
//
//  Created by Micah Njeru on 18/03/2024.
//

import SwiftUI

struct OffsetModifier: ViewModifier {
    
    var tab: Tab
    @Binding var currentTab: String
    
    func body(content: Content) -> some View {
        content
            .overlay(
                // Getting Scroll Offset using Geometry Reader
                
                GeometryReader { proxy in
                    
                    Color.clear
                        .preference(key: OffsetKey.self, value: proxy.frame(in: .named("SCROLL")))
                }
            )
            .onPreferenceChange(OffsetKey.self) { proxy in
                
                // If minY is between 20 to -half of the midX
                // then updating current tab..
                
                let offset = proxy.minY
                
                // Since on change on Home is Updating Scroll...
                // to avoid that...
                
                // ADDING "SCROLL" TO LAST ID...
                // TO IDENTIFY EASILY...
                
                
                
                withAnimation(.easeInOut) {
                    currentTab = (offset < 20 && -offset < (proxy.midX / 2) && currentTab != tab.id) ? "\(tab.id) SCROLL" : currentTab
                }
            }
    }
}

#Preview {
    Home()
}

// Preference Key...
struct OffsetKey: PreferenceKey {
    
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}

