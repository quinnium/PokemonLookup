//
//  WeightChartView+VM.swift
//  PokemonLookup
//
//  Created by Quinn on 16/06/2024.
//

import Foundation

extension WeightChartView {
    @Observable class ViewModel {
        
        private let weight: Int
        var displayedWeight: Int = 0
        var imageScale: CGFloat = 0.5
        
        init(weight: Int) {
            self.weight = weight
        }
        
        func showWeight() {
            displayedWeight = weight
        }
    }
}
