//
//  WidthPreferenceKey.swift
//  PokemonLookup
//
//  Created by Quinn on 16/06/2024.
//

import SwiftUI

// Preference Key to communicate a single subview height back up through its view hierarchy
struct WidthPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}
