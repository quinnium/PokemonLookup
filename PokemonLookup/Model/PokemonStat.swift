//
//  PokemonStat.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation

class PokemonStat: Decodable {
    let value: Int
    let name: String
    
    enum CodingKeys: String, CodingKey {
        // Keys for properties (including those within nested containers)
        case value = "baseStat"
        case name
        // Key for nested container
        case stat
    }
    
    required init(from decoder: any Decoder) throws {
        let container       = try decoder.container(keyedBy: CodingKeys.self)
        self.value  = try container.decode(Int.self, forKey: .value)
        
        // 'Name' property is within a nested container named 'stat'
        let statContainer   = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .stat)
        self.name   = try statContainer.decode(String.self, forKey: .name)
    }
    
    init(value: Int, name: String) {
        self.value = value
        self.name = name
    }
}
