//
//  LandingPageView.swift
//  PokemonLookup
//
//  Created by Quinn on 05/06/2024.
//

import SwiftUI

struct LandingPageView: View {
    @Environment(\.dismiss) var dismiss
    let networkManager = NetworkManager()
    
    var body: some View {
        VStack(spacing: 80) {
            PLBrandedTextView(text: "Pokémon\n Lookup", size: 80, color: .yellow, border: .blue)
            Button {
                dismiss()
            } label: {
                PLCapsuleTextView(text: "Go!", size: 25, width: 180, height: 50)
            }
        }
    }
}

#Preview {
    LandingPageView()
}
