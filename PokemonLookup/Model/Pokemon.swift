//
//  Pokemon.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

class Pokemon: Decodable{

    let id: Int
    let name: String
    let sprites: PokemonSprites
    let stats: [PokemonStat]
    
    // Computed variables for more convenient calling of nested objects' URL strings
    var smallImageURLString: String? {
        sprites.frontDefault
    }
    
    var largeImageURLString: String? {
        sprites.other?.officialArtwork.frontDefault
    }
    
    init(id: Int, name: String, sprites: PokemonSprites, stats: [PokemonStat]) {
        self.id = id
        self.name = name
        self.sprites = sprites
        self.stats = stats
    }
}


extension Pokemon: Equatable, Hashable {

    static func == (lhs: Pokemon, rhs: Pokemon) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
    }
}

