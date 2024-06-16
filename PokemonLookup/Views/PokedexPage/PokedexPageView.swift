//
//  PokedexPageView.swift
//  PokemonLookup
//
//  Created by Quinn on 06/06/2024.
//

import SwiftUI

struct PokedexPageView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @Bindable var viewModel: ViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                let numberOfColumns = horizontalSizeClass == .compact ? 2 : 3
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: numberOfColumns), spacing: 5) {
                    ForEach(viewModel.displayedPokemon) { entry in
                        PokedexEntryView(viewModel: PokedexEntryView.ViewModel(pokedexEntry: entry, selectedPokemon: $viewModel.selectedPokemon))
                    }
                }
                .padding(.horizontal, 10)
            }
            .searchable(text: $viewModel.seachText, placement: .automatic)
            .navigationTitle("Pokemon Lookup")
            .navigationDestination(item: $viewModel.selectedPokemon) { pokemon in
                PokemonDetailView(viewModel: PokemonDetailView.ViewModel(pokemon: pokemon))
            }
        }
    }
}

#Preview {
    PokedexPageView(viewModel: .init())
}
