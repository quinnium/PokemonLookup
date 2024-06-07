//
//  PLBrandedTextView.swift
//  PokemonLookup
//
//  Created by Quinn on 05/06/2024.
//

import SwiftUI

struct PLBrandedTextView: View {
    let text: String
    let size: CGFloat
    var color: Color = .yellow
    var border: Color = .clear
    
    var body: some View {
        Text(text)
            .foregroundStyle(color)
            .shadow(color: .blue, radius: size/80)
            .shadow(color: .blue, radius: size/80)
            .shadow(color: .blue, radius: size/80)
            .shadow(color: .blue, radius: size/80)
            .shadow(color: .blue, radius: size/80)
            .shadow(color: .blue, radius: size/80)
            .shadow(color: .blue, radius: size/80)
            .shadow(color: .blue, radius: size/80)
            .shadow(color: .blue, radius: size/80)
            .font(.custom("Pokemon Solid", size: size))
    }
}

#Preview {
    PLBrandedTextView(text: "Pokemon \n Lookup", size: 80, color: .yellow, border: .blue)
}
