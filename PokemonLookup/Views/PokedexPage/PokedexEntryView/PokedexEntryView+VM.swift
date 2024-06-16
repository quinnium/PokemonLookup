//
//  PokedexEntryView+VM.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

extension PokedexEntryView {
    @Observable class ViewModel {
        
        private let networkManager = NetworkManager()
        private let pokedexEntry: PokedexEntry
        private var pokemon: Pokemon?
        var selectedPokemon: Binding<Pokemon?>
        
        var name: String {
            /* In case of any delay in receiving the pokemon object from the networkManager, we can use the 'backup' of the pokedexEntry's 'name'.
             They should, in theoy, be exactly the same, but safer to use the name from the Pokemon object as that is the better source. */
            guard pokemon != nil else { return pokedexEntry.name.capitalized }
            return pokemon!.name.capitalized
        }
        var imageURLString: String? {
            pokemon?.sprites.frontDefaultSmall
        }
        
        init(pokedexEntry: PokedexEntry, selectedPokemon: Binding<Pokemon?>) {
            self.pokedexEntry = pokedexEntry
            self.selectedPokemon = selectedPokemon
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
        
        func didTapView() {
            selectedPokemon.wrappedValue = pokemon
        }
    }
}
