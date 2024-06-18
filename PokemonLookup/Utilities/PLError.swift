//
//  PLError.swift
//  PokemonLookup
//
//  Created by Quinn on 06/06/2024.
//

import Foundation

enum PLError: Error {
    
    case invalidURL
    case invalidData
    case unableToLoadPokedex
    case failedToFetchPokemon
}
