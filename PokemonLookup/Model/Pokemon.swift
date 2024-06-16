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
    let weight: Int
    
    init(id: Int, name: String, sprites: PokemonSprites, stats: [PokemonStat], weight: Int) {
        self.id = id
        self.name = name
        self.sprites = sprites
        self.stats = stats
        self.weight = weight
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

