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
        /* Navigation is determined within this view (as oposed to higher up in the view hierarchy) because it is *this* view's viewModel that owns the 'Pokemon' object (needed to pass to the navigation destination).
         Although the navigationDestination *could* be triggered higher up the hierarchy using a PokedexEntry's url, it would involve another API call, which would not be not optimal */
        .navigationDestination(item: $viewModel.selectedPokemon) { pokemon in
            PokemonDetailView(viewModel: PokemonDetailView.ViewModel(pokemon: pokemon))
        }
    }
}

#Preview {
    PokedexEntryView(viewModel: .init(pokedexEntry: MockData.pokedexEntry))
}
