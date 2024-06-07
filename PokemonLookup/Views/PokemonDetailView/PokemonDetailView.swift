//
//  PokemonDetailView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct PokemonDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            CurvedBackgroundView()
            VStack(spacing: 0) {
                PokemonImageView(imageURL: viewModel.imageURLString, animate: true)
                    .frame(width: 230, height: 230)
                PLBrandedTextView(text: viewModel.name, size: 50, color: .yellow, border: .blue)
                StatsChartView(viewModel: StatsChartView.ViewModel(stats: viewModel.stats))
                    .padding(40)
                Spacer()
            }
            // VStack offset to use more of the empty space taken by the Toolbar
            .offset(y: -80)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                }
            }
        }  
    }
}

#Preview {
    NavigationStack {
        PokemonDetailView(viewModel: .init(pokemon: MockData.pokemon))
            .navigationTitle(" ")
    }
}
