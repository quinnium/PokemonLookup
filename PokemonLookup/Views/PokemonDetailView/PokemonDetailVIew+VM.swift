//
//  PokemonDetailVIew+VM.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

extension PokemonDetailView {
    @Observable
    class ViewModel {
        
        private let pokemon: Pokemon

        var imageURLString: String? {
            pokemon.sprites.frontDefaultLarge
        }
        var name: String {
            pokemon.name.capitalized
        }
        var stats: [PokemonStat] {
            pokemon.stats
        }
        
        // View Models for subviews
        var pokemonChartsTabViewModel: PokemonChartsTabView.ViewModel {
            PokemonChartsTabView.ViewModel(pokemon: pokemon)
        }

        init(pokemon: Pokemon) {
            self.pokemon = pokemon
        }
        
    }
}
