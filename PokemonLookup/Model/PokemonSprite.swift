//
//  PokemonSprite.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

class PokemonSprites: Decodable {
    let frontDefault: String?
    
    init(frontDefaultURLString: String) {
        self.frontDefault = frontDefaultURLString
    }
}
