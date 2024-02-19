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
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
