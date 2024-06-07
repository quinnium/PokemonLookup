//
//  PLError.swift
//  PokemonLookup
//
//  Created by Quinn on 06/06/2024.
//

import Foundation

enum PLError: String, Error {
    
    case invalidURL             = "Invalid URL. Please contact the app developer"
    case unableToComplete       = "Unable to complete your request, please check your internet conneciton"
    case invalidResponse        = "Invalid response from the server, please try again"
    case invalidData            = "The data received from the server was invalid, please try again"
}
