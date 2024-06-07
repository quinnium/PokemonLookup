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
        
        let pokemon: Pokemon
        
        init(pokemon: Pokemon) {
            self.pokemon = pokemon
        }
        
    }
}
