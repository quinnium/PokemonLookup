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
        var selectedPokemon: Pokemon?
        var seachText: String = ""
        var displayedPokemon: [PokedexEntry] {
            if seachText.isEmpty {
                return allPokemon
            } else {
                return allPokemon.filter { $0.name.lowercased().contains(seachText.lowercased()) }
            }
        }
        var pokedexIsEmpty: Bool {
            allPokemon.isEmpty
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
                print(PLError.unableToLoadPokedex)
            }
        }
    }
}
