//
//  PokemonStat.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

class PokemonStat: Decodable {
    let baseStat: Int
    let stat: StatInfo
    
    // Computed property for easier 'get' of stat name
    var baseStatName: String {
        stat.name
    }
    
    init(baseStat: Int, stat: StatInfo) {
        self.baseStat = baseStat
        self.stat = stat
    }
}

class StatInfo: Decodable {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}
