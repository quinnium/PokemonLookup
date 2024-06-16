//
//  TextCapsuleView.swift
//  PokemonLookup
//
//  Created by Quinn on 16/06/2024.
//

import SwiftUI

struct TextCapsuleView: View {
    let text: String
    
    var body: some View {
        
        Text(text)
            .padding(.horizontal, 40)
            .padding(.vertical, 5)
            .background {
                Capsule()
                    .foregroundStyle(Color.white)
                    .opacity(0.2)
            }
    }
}

#Preview {
    TextCapsuleView(text: "Information for Pidgeotto")
}
