//
//  MockData.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

enum MockData {
    static let pokedexEntry: PokedexEntry = PokedexEntry(name: "ditto", 
                                                         url: "https://pokeapi.co/api/v2/pokemon/ditto")
    
    static let pokemon: Pokemon = Pokemon(id: 1,
                                          name: "Test Name",
                                          sprites: PokemonSprites(frontDefaultURLString: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"))
    static let pokemonImageURLString: String = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"
}
