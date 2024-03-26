//
//  DataModel.swift
//  Rustiko
//
//  Created by Micah Njeru on 12/02/2024.
//

import Foundation
import SwiftData


// Class Struct For JSON Codable
struct Menu: Identifiable, Codable, Hashable {
    
    static func == (lhs: Menu, rhs: Menu) -> Bool {
        return lhs.id == rhs.id && lhs.category == rhs.category
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id: Int
    let menu: String
    let category: String
    let item: [Food]
    
    // Menu Item Struct
    struct Food: Identifiable ,Codable {
        let id: Int
        let name: String
        let price: Double
        
        // Optional Section
        let description: String?
        let options: Choices?
        let addOn: Additions?
    }
    
    // Menu Item Option Struct
    struct Choices: Codable {
        let first: String
        let second: String
        let third: String
        let fourth: String
    }
    
    // Menu Item Addition Struct
    struct Additions: Codable {
        let addOnItem: String
        let addOnPrice: Double
    }
}


// Class Struct For Swift Data
@Model
class SwiftDataMenuModel {
    // Non-optional Attributes
    let id: Int
    let name: String
    let price: Int
    
    // Optional Attributes
    let parentCategory: String?
    let childCategory: String?
    
    // Changed "description" to "menuDescription" because it's a reserved keyword in Swift Data + Core Data
    let menuDescription: String?
    let options: Choices?
    let addOn: Additions?
    
    // For Menu items with different accompaniments
    // Set Codable & Hashable to Choices struct to conform to Persistent Model in Swift Data
    struct Choices: Codable, Hashable {
        let first: String
        let second: String
        let third: String
        let fourth: String
    }
    
    // For menu items with extra add ons that are paid for
    // Set Codable & Hashable to Additions struct to conform to Persistent Model in Swift Data
    struct Additions: Codable, Hashable {
        let addOnItem: String
        let addOnPrice: Double
    }
    
    // Swift Data Model initializer
    init(id: Int, name: String, price: Int, parentCategory: String?, childCategory: String?, menuDescription: String?, options: Choices?, addOn: Additions?) {
        self.id = id
        self.name = name
        self.price = price
        self.parentCategory = parentCategory
        self.childCategory = childCategory
        self.menuDescription = menuDescription
        self.options = options
        self.addOn = addOn
    }
}
