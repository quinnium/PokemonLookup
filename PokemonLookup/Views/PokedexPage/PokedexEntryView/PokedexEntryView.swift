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
                    .padding(.horizontal, 10)
                Text(viewModel.name)
                Spacer()
            }
        }
        .frame(height: 70)
        .onTapGesture {
            viewModel.didTapView()
        }
    }
}

#Preview {
    PokedexEntryView(viewModel: .init(pokedexEntry: MockData.pokedexEntry, selectedPokemon: .constant(nil)))
}
