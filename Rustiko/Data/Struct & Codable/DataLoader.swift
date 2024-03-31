//
//  DataLoader.swift
//  Rustiko
//
//  Created by Micah Njeru on 12/02/2024.
//

import Foundation

// Variables that contain all JSON data. These can be accessed globally
var beverages: [Menu] = load("BeveragesMenu.json")
var breakfast: [Menu] = load("BreakfastMenu.json")
var dessert: [Menu] = load("DessertMenu.json")
var dinner: [Menu] = load("DinnerMenu.json")
var lunch: [Menu] = load("LunchMenu.json")


// Function for finding, loading and decoding JSON files to Swift Data types
func load<T: Codable>(_ filename: String) -> T {
    
    // "data" Data Type assignment
    let data: Data

    // Safely pass in the file path
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    // Convert the data in the file to Data type
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    // Instatiate JSONDecoder(), assign Decoding Strategy and decode data
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
