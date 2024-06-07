//
//  Pokemon.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

class Pokemon: Decodable {
    let id: Int
    let name: String
    let sprites: PokemonSprites
    
    init(id: Int, name: String, sprites: PokemonSprites) {
        self.id = id
        self.name = name
        self.sprites = sprites
    }
}
