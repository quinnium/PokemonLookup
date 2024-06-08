//
//  PokemonSprites.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

class PokemonSprites: Decodable {
    
    let frontDefaultSmall: String
    let frontDefaultLarge: String
    
    enum CodingKeys: String, CodingKey {
        case frontDefaultSmall = "frontDefault"
        case other
    }
    
    // A second CodingKey enum required in this case as JSON's nested object has same key name as another property (and enum raw values must be unique)
    enum NestedCodingKeys: String, CodingKey {
        case frontDefaultLarge = "frontDefault"
        case officialArtwork = "official-artwork"
    }
    
    required init(from decoder: any Decoder) throws {
        // 'frontDefaultSmall' property isn't nested
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.frontDefaultSmall = try container.decode(String.self, forKey: .frontDefaultSmall)
        // 'frontDefaultLarge' property is nested within 'official-artwork' object, which itself is nested within 'other' object
        let otherNestedContainer = try container.nestedContainer(keyedBy: NestedCodingKeys.self, forKey: .other)
        let officialArtworkNestedContainer = try otherNestedContainer.nestedContainer(keyedBy: NestedCodingKeys.self, forKey: .officialArtwork)
        self.frontDefaultLarge = try officialArtworkNestedContainer.decode(String.self, forKey: .frontDefaultLarge)
    }
    
    init(frontDefaultSmall: String, frontDefaultLarge: String) {
        self.frontDefaultSmall = frontDefaultSmall
        self.frontDefaultLarge = frontDefaultLarge
    }
}
