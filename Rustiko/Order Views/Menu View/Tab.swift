//
//  Tab.swift
//  Rustiko
//
//  Created by Micah Njeru on 18/03/2024.
//

import SwiftUI

// Tab Model...
struct Tab: Identifiable {
    var id = UUID().uuidString
    var tab: String
    
    // Using the same Menu struct from Data Model
    var foodMenu: [Menu]
}

// Tab Items for each JSON Menu File
var tabItems = [
    
    Tab(tab: "Beverages", foodMenu: beverages),
    Tab(tab: "Breakfast", foodMenu: breakfast),
    Tab(tab: "Dessert", foodMenu: dessert),
    Tab(tab: "Dinner", foodMenu: dinner),
    Tab(tab: "Lunch", foodMenu: lunch),
    
]
