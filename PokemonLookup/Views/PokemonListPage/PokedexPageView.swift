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
            // TODO: Needs to be lazy vstack
            List(viewModel.displayedPokemon) { entry in
//                Text(entry.name.capitalized)
                PokedexEntryView(viewModel: PokedexEntryView.ViewModel(pokedexEntry: entry))
            }
            .searchable(text: $viewModel.seachText, placement: .navigationBarDrawer)
            .navigationTitle("Pokemon")
        }
    }
}

#Preview {
    PokedexPageView(viewModel: .init())
}
