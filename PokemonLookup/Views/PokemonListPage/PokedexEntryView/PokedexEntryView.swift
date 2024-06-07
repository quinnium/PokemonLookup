//
//  PokedexEntryView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct PokedexEntryView: View {
    
    var viewModel: ViewModel
    
    var body: some View {
        HStack {
            Text("Name: ")
            Text(viewModel.pokemon?.name.description ?? "...")
        }
        
    }
}

#Preview {
    PokedexEntryView(viewModel: .init(pokedexEntry: MockData.pokedexEntry))
}
