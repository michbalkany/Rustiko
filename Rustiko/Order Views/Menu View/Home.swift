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
    
    // Color environment variable for ease of color accessing
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        VStack(spacing: 0) {
            
            VStack {
                
                // Top Section with Back Arrow, Menu Title and Search Icon
                HStack(spacing: 15) {
                    
                    // Back Arrow Button
                    Button {
                        // Insert Button Functionality Here
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                    }
                    
                    // Menu Title
                    Text("McDonald's - Chinatown")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    // Search Button
                    Button {
                        // Insert Button Functionality Here
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                    }
                }
                .foregroundColor(.primary)
                .padding(.horizontal)
                
                // Scroll View Reader for top level tabs
                // To scroll tab automatically when user scrolls
                ScrollViewReader { proxy in
                    
                    // Tab Horizontal Scroll View
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        // Horizontal Alignment of the Tabs
                        HStack(spacing: 30) {
                            
                            // Loop through the tabs in Tab.swift file
                            ForEach(tabItems) { tab in
                                
                                // Vertical Alignment of the Tab String and Underline Capsule
                                VStack {
                                    
                                    // Tab Text
                                    Text(tab.tab)
                                    // Sets color of current selected tab
                                        .foregroundColor(currentTab.replacingOccurrences(of: " SCROLL", with: "") == tab.id ? .black : .gray)
                                    
                                    // For matched geometry effect
                                    if currentTab.replacingOccurrences(of: " SCROLL", with: "") == tab.id {
                                        
                                        // Current Tab Underline Capsule
                                        Capsule()
                                            .fill(.black)
                                            .matchedGeometryEffect(id: "TAB", in: animation)
                                            .frame(height: 3)
                                            .padding(.horizontal, -10)
                                    } else {
                                        
                                        // Not-Current Tab Underline Capsule
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
            .background(scheme == .dark ? Color.black : Color.white)
            .overlay(
                
                // Divider...
                Divider()
                    .padding(.horizontal, -15)
                , alignment: .bottom
            )
            
            ScrollView(.vertical, showsIndicators: false) {
                
                // Scroll view reader to scroll the Menu Items
                ScrollViewReader { proxy in
                    
                    VStack(spacing: 15) {
                        
                        // Loop through each tabItem from Tab.swift file
                        ForEach(tabItems) { tab in
                            
                            // Menu Card View
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
            // Setting Coordinate Space name for offset
            .coordinateSpace(name: "SCROLL")
        }
        // Setting first tab 
        .onAppear {
            currentTab = tabItems.first?.id ?? ""
        }
    }
}

#Preview {
    Home()
}

// Menu View to show individual menu items
struct MenuCardView: View {
    
    // Tab attribute to read from
    var tab: Tab
    
    // Binding to currentTab in Home view
    @Binding var currentTab: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            // Menu Section Title
            Text(tab.tab)
                .font(.title.bold())
                .padding(.vertical)
            
            // Loop through each Menu Section's items
            ForEach(tab.foodMenu) { food in
                
                // Food Menu Item Category View
                HStack(spacing: 15) {
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        // Food Menu Item Category
                        Text(food.category)
                            .font(.title3.bold())
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                // Food Menu Item View
                VStack(alignment: .leading, spacing: 10) {
                    
                    // Loop through each Menu item in Food Category
                    ForEach(food.item) { foodItem in
                        
                        // Food Menu Item Name
                        Text(foodItem.name)
                            .font(.title3)
                        
                        // Food Menu Item Description
                        Text(foodItem.description ?? "Served as is")
                            .foregroundStyle(.gray)
                        
                        // Food Menu Item Price
                        Text(String(format: "Price: $%.2f", foodItem.price))
                            .fontWeight(.bold)
                        
                        // Divider for separating each Food Menu Item
                        Divider()
                    }
                    
                }
            }
        }
        .modifier(OffsetModifier(tab: tab, currentTab: $currentTab))
        
        // Setting ID for Scroll View Reader...
        .id(tab.id)
    }
}
