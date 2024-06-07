//
//  PokemonSprite.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

// Class to decode Pokemon Sprites, including nested elements for officialArtwork
class PokemonSprites: Decodable {
    let frontDefault: String?
    let other: Artwork?
    
    init(frontDefaultURLString: String, other: Artwork? = nil) {
        self.frontDefault = frontDefaultURLString
        self.other = other
    }
}

class Artwork: Decodable {
    let officialArtwork: OfficialArtwork
    
    init(officialArtwork: OfficialArtwork) {
        self.officialArtwork = officialArtwork
    }
    
    enum CodingKeys: String, CodingKey {
        case officialArtwork = "official-artwork"
    }
}

class OfficialArtwork: Decodable {
    let frontDefault: String
    
    init(frontDefault: String) {
        self.frontDefault = frontDefault
    }
}
