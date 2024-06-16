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
    private var borderOffset: CGFloat {
        size / 16
    }
    
    var body: some View {
        
        HStack(spacing: -0.93 * size) {
            ForEach(Array(text.enumerated()), id: \.offset) { stringElement in
                // Provide spaces to avoid custom font being clipped
                let char = " " + String(stringElement.element) + " "
                
                ZStack {
                    // Provide 'border' by giving 8 backgrounds, offset in 8 different directions
                    ZStack {
                        Text(char).offset(x: 0, y: -borderOffset)
                        Text(char).offset(x: borderOffset, y: -borderOffset)
                        Text(char).offset(x: borderOffset, y: 0)
                        Text(char).offset(x: borderOffset, y: borderOffset)
                        Text(char).offset(x: 0, y: borderOffset)
                        Text(char).offset(x: -borderOffset, y: borderOffset)
                        Text(char).offset(x: -borderOffset, y: 0)
                        Text(char).offset(x: -borderOffset, y: -borderOffset)
                    }
                    .foregroundStyle(border)
                    Text(char)
                        .foregroundStyle(color)
                }
                .zIndex(Double(-stringElement.offset))
                .font(.custom("Pokemon Solid", size: size))
                // Disable dynamic text sizing, as not wanted for this review
                .environment(\.dynamicTypeSize, .medium)
            }
        }
        // Vertical padding required here to avoid clipping of any underhanging letters due to this custom font
        .padding(.vertical)
    }
}

#Preview {
    PLBrandedTextView(text: "PokemonSaurus", size: 40, color: .yellow, border: .blue)
}
