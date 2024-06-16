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
    static let pokemon: Pokemon = Pokemon(id: 1, name: "Pidgeotto", sprites: pokemonSprites, stats: pokemonStats, weight: 39)

    static let spriteSmall: String = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png"
    static let spriteLarge: String = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png"
    static let pokemonSprites: PokemonSprites = PokemonSprites(frontDefaultSmall: spriteSmall, frontDefaultLarge: spriteLarge)
    static let pokemonStats: [PokemonStat] = [PokemonStat(value: 45, name: "hp"),
                                              PokemonStat(value: 99, name: "attack"),
                                              PokemonStat(value: 60, name: "defense"),
                                              PokemonStat(value: 39, name: "special-attack"),
                                              PokemonStat(value: 50, name: "special-defense"),
                                              PokemonStat(value: 23, name: "speed")]
}
