//
//  StatsChartView+VM.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

extension StatsChartView {
    @Observable
    class ViewModel {
        
        private let stats: [PokemonStat]
        
        var valueHP: Int {
            stats.first { $0.baseStatName == "hp" }?.baseStat ?? 0
        }
        var valueAttack: Int {
            stats.first { $0.baseStatName == "attack" }?.baseStat ?? 0
        }
        var valueDefence: Int {
            stats.first { $0.baseStatName == "defense" }?.baseStat ?? 0
        }
        var valueSpecialAttack: Int {
            stats.first { $0.baseStatName == "special-attack" }?.baseStat ?? 0
        }
        var valueSpecialDefence: Int {
            stats.first { $0.baseStatName == "special-defense" }?.baseStat ?? 0
        }
        var valueSpeed: Int {
            stats.first { $0.baseStatName == "speed" }?.baseStat ?? 0
        }
        var maxValue: Int {
            // By default, maximum value for chart is 300, but in the instance any of the stats' values exceed this, then it is automatically increased
            max(200, max(valueHP, valueAttack, valueDefence, valueSpecialAttack, valueSpecialDefence, valueSpeed))
        }
     
        var statsArray: [(name: String, value: Int)] {
            [
                (name: "HP", value: valueHP),
                (name: "Attack", value: valueAttack),
                (name: "Defence", value: valueDefence),
                (name: "Sp. attack", value: valueSpecialAttack),
                (name: "Sp. defence", value: valueSpecialDefence),
                (name: "Speed", value: valueSpeed)
            ]
        }
        
        init(stats: [PokemonStat]) {
            self.stats = stats
        }
    }
}
