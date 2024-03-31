//
//  Home.swift
//  Rustiko
//
//  Created by Micah Njeru on 18/03/2024.
//

import SwiftUI

struct Home: View {
    
    // Current Tab...
    @State var currentTab = ""
    @Namespace var animation
    
    // Assign color environment variable
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        VStack(spacing: 0) {
            
            VStack {
                
                HStack(spacing: 15) {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                    }
                    
                    Text("McDonald's - Chinatown")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                    }
                }
                .foregroundColor(.primary)
                .padding(.horizontal)
                
                // Scroll View Reader...
                // to scroll tab automatically when user scrolls...
                
                ScrollViewReader { proxy in
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 30) {
                            
                            ForEach(tabItems) { tab in
                                
                                VStack {
                                    Text(tab.tab)
                                    // Sets color of current selected tab
                                        .foregroundColor(currentTab.replacingOccurrences(of: " SCROLL", with: "") == tab.id ? .black : .gray)
                                    
                                    // For matched geometry effect
                                    if currentTab.replacingOccurrences(of: " SCROLL", with: "") == tab.id {
                                        
                                        Capsule()
                                            .fill(.black)
                                            .matchedGeometryEffect(id: "TAB", in: animation)
                                            .frame(height: 3)
                                            .padding(.horizontal, -10)
                                    } else {
                                        
                                        Capsule()
                                            .fill(.clear)
                                            .frame(height: 3)
                                            .padding(.horizontal, -10)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.easeInOut) {
                                        currentTab = "\(tab.id) TAP"
                                        proxy.scrollTo(currentTab.replacingOccurrences(of: " TAP", with: ""), anchor: .topTrailing)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal, 30)
                    }
                    .onChange(of: currentTab) {
                        
                        // Enabling scrolling...
                        // onChange(of:perform:)
                        if currentTab.contains(" SCROLL") {
                            
                            withAnimation(.easeInOut) {
                                proxy.scrollTo(currentTab.replacingOccurrences(of: " SCROLL", with: ""), anchor: .topTrailing)
                            }
                        }
                    }
                }
                .padding(.top)
            }
            .padding([.top])
            // Divider...
            .background(scheme == .dark ? Color.black : Color.white)
            .overlay(
                Divider()
                    .padding(.horizontal, -15)
                , alignment: .bottom
            )
            
            ScrollView(.vertical, showsIndicators: false) {
                
                // Scroll view reader to scroll the content...
                ScrollViewReader { proxy in
                    
                    VStack(spacing: 15) {
                        
                        ForEach(tabItems) { tab in
                            
                            // Menu Card View...
                            MenuCardView(tab: tab, currentTab: $currentTab)
                                .padding(.top)
                        }
                    }
                    .padding([.horizontal, .bottom])
                    .onChange(of: currentTab) {
                        
                        // Avoiding scroll if its tapped...
                        if currentTab.contains(" TAP") {
                            // Scrolling to content...
                            withAnimation(.easeInOut) {
                                proxy.scrollTo(currentTab.replacingOccurrences(of: " TAP", with: ""), anchor: .topTrailing)
                            }
                        }
                    }
                }
            }
            // Setting Coordinate Space name for offset...
            .coordinateSpace(name: "SCROLL")
        }
        // Setting first tab...
        .onAppear {
            currentTab = tabItems.first?.id ?? ""
        }
    }
}

#Preview {
    Home()
}


struct MenuCardView: View {
    
    var tab: Tab
    @Binding var currentTab: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            Text(tab.tab)
                .font(.title.bold())
                .padding(.vertical)
            
            ForEach(tab.foodMenu) { food in
                // Place Section Here
                
                
                // Food View...
                HStack(spacing: 15) {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text(food.category)
                            .font(.title3.bold())
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    
                    ForEach(food.item) { foodItem in
                        
                        Text(foodItem.name)
                            .font(.title3)
                        
                        Text(foodItem.description ?? "Served as is")
                            .foregroundStyle(.gray)
                        
                        Text(String(format: "Price: $%.2f", foodItem.price))
                            .fontWeight(.bold)
                        
                        Divider()
                    }
                    
                }
                
                //                Divider()
            }
        }
        .modifier(OffsetModifier(tab: tab, currentTab: $currentTab))
        
        // Setting ID for Scroll View Reader...
        .id(tab.id)
    }
}
