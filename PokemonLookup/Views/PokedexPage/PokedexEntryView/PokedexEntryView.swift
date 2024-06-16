//
//  PokedexEntryView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct PokedexEntryView: View {
    
    @Bindable var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color(uiColor: .systemGray5))
            HStack {
                PokemonImageView(imageURL: viewModel.imageURLString)
                    .frame(width: 70)
                Text(viewModel.name)
                    .minimumScaleFactor(0.6)
                    .lineLimit(1)
                Spacer()
            }
        }
        .frame(height: 70)
        .onTapGesture {
            viewModel.didTapView()
        }
        .accessibilityLabel(viewModel.name)
        .accessibilityAddTraits(.isButton)
    }
}

#Preview {
    PokedexEntryView(viewModel: .init(pokedexEntry: MockData.pokedexEntry, selectedPokemon: .constant(nil)))
}
