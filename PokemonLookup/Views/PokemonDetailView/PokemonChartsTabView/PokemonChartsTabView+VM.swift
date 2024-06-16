//
//  PokemonChartsTabView+VM.swift
//  PokemonLookup
//
//  Created by Quinn on 16/06/2024.
//

import Foundation

extension PokemonChartsTabView {
    @Observable class ViewModel {
        
        private let pokemon: Pokemon
        
        var selectedTab: Int = 0

        // View Models for sub views
        var statsChartViewModel: StatsChartView.ViewModel {
            StatsChartView.ViewModel(stats: pokemon.stats)
        }
        var weightChartViewModel: WeightChartView.ViewModel {
            WeightChartView.ViewModel(weight: pokemon.weight)
        }
        
        init(pokemon: Pokemon) {
            self.pokemon = pokemon
        }
    }
}
