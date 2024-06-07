//
//  MockData.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

enum MockData {
    
    static let pokedexEntry: PokedexEntry = PokedexEntry(name: "Pidgeotto",
                                                         url: "https://pokeapi.co/api/v2/pokemon/ditto")
    static let pokemon: Pokemon = Pokemon(id: 1, name: "Pidgeotto", sprites: pokemonSprites)

    static let spriteSmall: String = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png"
    static let spriteLarge: String = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png"
    static let pokemonSprites: PokemonSprites = PokemonSprites(frontDefaultURLString: spriteSmall, other: Artwork(officialArtwork: OfficialArtwork(frontDefault: spriteLarge)))
}
