//
//  PokedexPageView.swift
//  PokemonLookup
//
//  Created by Quinn on 06/06/2024.
//

import SwiftUI

struct PokedexPageView: View {
    
    @Bindable var viewModel: ViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 5) {
                    ForEach(viewModel.displayedPokemon) { entry in
                        PokedexEntryView(viewModel: PokedexEntryView.ViewModel(pokedexEntry: entry))
                            
                    }
                    
                }
                .padding(.horizontal, 10)
            }
            .searchable(text: $viewModel.seachText, placement: .automatic)
            .navigationTitle("Pokemon Lookup")
        }
    }
}

#Preview {
    PokedexPageView(viewModel: .init())
}
