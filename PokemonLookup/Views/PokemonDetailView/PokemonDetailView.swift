//
//  PokemonDetailView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct PokemonDetailView: View {
    
    @State var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            CurvedBackgroundView()
            DynamicStack {
                VStack {
                    PokemonImageView(imageURL: viewModel.imageURLString, animate: true)
                        .frame(width: 230, height: 230)
                    PLBrandedTextView(text: viewModel.name, size: 50, color: .yellow, border: .blue)
                }
                VStack {
                    Spacer()
                    TextCapsuleView(text: "Information for \(viewModel.name)")
                        .accessibilityAddTraits(.isHeader)
                        Spacer()
                    PokemonChartsTabView(viewModel: viewModel.pokemonChartsTabViewModel)
                        .padding(.horizontal, 40)
                    Spacer()
                }
                
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        PokemonDetailView(viewModel: .init(pokemon: MockData.pokemon))
            .navigationBarTitleDisplayMode(.inline)
    }
}
