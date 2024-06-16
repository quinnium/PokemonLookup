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
            stats.first { $0.name == Constants.StatNames.hp }?.value ?? 0
        }
        var valueAttack: Int {
            stats.first { $0.name == Constants.StatNames.attack }?.value ?? 0
        }
        var valueDefence: Int {
            stats.first { $0.name == Constants.StatNames.defense }?.value ?? 0
        }
        var valueSpecialAttack: Int {
            stats.first { $0.name == Constants.StatNames.specialAttack }?.value ?? 0
        }
        var valueSpecialDefence: Int {
            stats.first { $0.name == Constants.StatNames.specialDefense }?.value ?? 0
        }
        var valueSpeed: Int {
            stats.first { $0.name == Constants.StatNames.speed }?.value ?? 0
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
                (name: "Sp.Attack", value: valueSpecialAttack),
                (name: "Sp.Defence", value: valueSpecialDefence),
                (name: "Speed", value: valueSpeed)
            ]
        }
        
        init(stats: [PokemonStat]) {
            self.stats = stats
        }
    }
}
