//
//  Color+Ext.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import Foundation
import SwiftUI

extension Color {
    
    func lightenByPercentage(by percentage: Int) -> Color {
        let uiColor = UIColor(self)
        return Color(uiColor: uiColor.lightenByPercentage(by: percentage))
        
    }
    
    func darkenByPercentage(by percentage: Int) -> Color {
        let uiColor = UIColor(self)
        return Color(uiColor: uiColor.darkenByPercentage(by: percentage))
    }
}
