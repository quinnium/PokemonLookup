//
//  PokedexEntryView+VM.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

extension PokedexEntryView {
    @Observable class ViewModel {
        
        let networkManager = NetworkManager()
        let pokedexEntry: PokedexEntry
        var pokemon: Pokemon?
        
        init(pokedexEntry: PokedexEntry) {
            self.pokedexEntry = pokedexEntry
            Task {
                await fetchPokemon()
            }
        }
        
        private func fetchPokemon() async {
            do {
                pokemon = try await networkManager.fetchPokemon(fromURLString: pokedexEntry.url)
            } catch {
                // TODO: Handle error properly
                print("Failed to load Pokedex")
            }
        }
    }
}
