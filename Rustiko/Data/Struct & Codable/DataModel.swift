//
//  DataModel.swift
//  Rustiko
//
//  Created by Micah Njeru on 12/02/2024.
//

import Foundation


// Class Struct
class Menu: Codable {
    // Non-optional Attributes
    let id: Int
    let name: String
    let price: Int
    
    // Optional Attributes
    let parentCategory: String?
    let childCategory: String?
    let description: String?
    let options: Choices?
    let addOn: Additions?

    // For Menu items with different accompaniments
    struct Choices: Codable {
        let first: String
        let second: String
        let third: String
        let fourth: String
    }
    
    // For menu items with extra add ons that are paid for
    struct Additions: Codable {
        let addOnItem: String
        let addOnPrice: Double
    }
}
