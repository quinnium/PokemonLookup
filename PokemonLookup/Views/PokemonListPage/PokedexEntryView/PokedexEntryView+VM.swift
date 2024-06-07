//
//  PokedexEntryView+VM.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

extension PokedexEntryView {
    @Observable class ViewModel {
        
        private let networkManager = NetworkManager()
        private let pokedexEntry: PokedexEntry
        private var pokemon: Pokemon?
        
        var name: String {
            guard pokemon != nil else { return pokedexEntry.name.capitalized }
            return pokemon!.name.capitalized
        }
        var imageURLString: String? {
            pokemon?.sprites.frontDefault
        }
        
        init(pokedexEntry: PokedexEntry) {
            self.pokedexEntry = pokedexEntry
            Task {
                await fetchPokemon()
            }
        }
        
        private func fetchPokemon() async {
            do {
                let pokemon = try await networkManager.fetchPokemon(fromURLString: pokedexEntry.url)
                // Setting ViewModel's pokemon object needs to happen on Main Thread
                DispatchQueue.main.async {
                    self.pokemon = pokemon
                }
            } catch {
                // TODO: Handle error properly
                print("Failed to fetch Pokemon from PokedexEntry")
            }
        }
    }
}
