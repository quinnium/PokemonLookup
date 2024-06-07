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
            pokemon.sprites.other?.officialArtwork.frontDefault
        }
        var name: String {
            pokemon.name
        }

        init(pokemon: Pokemon) {
            self.pokemon = pokemon
        }
        
    }
}
