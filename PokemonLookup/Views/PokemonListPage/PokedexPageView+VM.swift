//
//  PokedexPageView+VM.swift
//  PokemonLookup
//
//  Created by Quinn on 06/06/2024.
//

import Foundation
import Observation

extension PokedexPageView {
    @Observable
    class ViewModel {
        
        private let networkManager = NetworkManager()
        private var allPokemon: [PokedexEntry] = []
        var seachText: String = ""
        var displayedPokemon: [PokedexEntry] {
            guard seachText.isNotEmpty else { return allPokemon }
            return allPokemon.filter { $0.name.lowercased().contains(seachText.lowercased()) }
        }
        
        init() {
            Task {
                await fetchData()
            }
        }
        
        func fetchData() async {
            do {
                let pokedex = try await networkManager.fetchPokedex()
                // Update of UI must happen on main thread
                DispatchQueue.main.async {
                    self.allPokemon = pokedex.results
                }
            } catch {
                // TODO: Handle error properly
                print("Failed to load Pokedex")
            }
        }
    }
}
