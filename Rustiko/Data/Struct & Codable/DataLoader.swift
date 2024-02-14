//
//  DataLoader.swift
//  Rustiko
//
//  Created by Micah Njeru on 12/02/2024.
//

import Foundation

// Published data to views that subscribe
class MenuData: ObservableObject {
    // Published list of menu items of type Menu struct
    @Published var breakfast: [Menu] = Bundle.main.decode("Breakfast Menu.json")
    @Published var lunch: [Menu] = Bundle.main.decode("Lunch Menu.json")
    @Published var dinner: [Menu] = Bundle.main.decode("Dinner Menu.json")
    @Published var dessert: [Menu] = Bundle.main.decode("Dessert Menu.json")
    @Published var beverages: [Menu] = Bundle.main.decode("Beverages Menu.json")
}


// Extension on Bundle for finding, loading and decoding JSON files to Swift Data types
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // Locate the file in the app bundle
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // Convert data to Swift Data types
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // Assign JSONDecoder to variable
        let decoder = JSONDecoder()
        
        // Set decoding strategy to convert from snake case
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        // Decode the data using Struct provided
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // Return the loaded Swift Data type data
        return loaded
    }
}
