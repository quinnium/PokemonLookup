//
//  PokedexEntry.swift
//  PokemonLookup
//
//  Created by Quinn on 06/06/2024.
//

import Foundation

class PokedexEntry: Decodable, Identifiable {
    let name: String
    let url: String
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
    
}
