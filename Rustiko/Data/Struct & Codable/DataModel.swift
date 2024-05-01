//
//  DataModel.swift
//  Rustiko
//
//  Created by Micah Njeru on 12/02/2024.
//

import Foundation
import SwiftData


// Struct For JSON Codable
/// A struct for encoding and decoding menu items.
///
/// The  `Menu` struct is used to encode and decode the menu files bundled together with the application.
/// It's used in the ``load(_:)`` generic function as a protocol  to conform when decoding.
///
struct Menu: Identifiable, Codable, Hashable {
    /// A computed property function for checking if `Menu` item conforms to `Equatable`
    ///
    /// The `static func` is used to conform to the `Equatable protocol` which is used
    /// in the `Identifiable` protocol when attempting to list items and differentiate them from othe entries.
    static func == (lhs: Menu, rhs: Menu) -> Bool {
        return lhs.id == rhs.id && lhs.category == rhs.category
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    /// Property used for identification of ``Menu`` item instances.
    var id: Int
    
    /// Property used to access the name of the major category of ``Menu``.
    ///
    /// Options include: Beverages, Breakfast, Dessert, Dinner & Lunch.
    let menu: String
    
    /// Property used to access the name of a sub-category of ``Menu``.
    let category: String
    
    /// Property used to store an array of ``Food``.
    let item: [Food]
    
    // Food Item Struct
    /// A struct that represents a ``Menu`` item instance.
    ///
    /// It showcases the proprties of a `Menu` instance that are available for use in the application.
    struct Food: Identifiable ,Codable, Hashable {
        
        static func == (lhs: Food, rhs: Food) -> Bool {
            return lhs.id == rhs.id && lhs.name == rhs.name && rhs.price == lhs.price
        }
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
        
        let id: Int
        let name: String
        let price: Double
        
        // Optional Section
        let description: String?
        let options: Choices?
        let addOn: Additions?
    }
    
    // Food.options Struct
    /// A struct that represents a ``Food`` item that has configuration options.
    ///
    /// This struct is optional. If available for a ``Food`` item instance,
    /// it has four (4) properties which can be used in the application.
    struct Choices: Codable {
        let first: String
        let second: String
        let third: String
        let fourth: String
    }
    
    // Food.addOn Struct
    /// A struct that represents a ``Food`` item that has and "extra add-on" menu option.
    ///
    /// This struct is optional. If available for a ``Food`` item instance,
    /// it has two (2) properties which can be used in the application.
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
