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
        Text(viewModel.pokemon.name)
    }
}

#Preview {
    PokemonDetailView(viewModel: .init(pokemon: MockData.pokemon))
}
