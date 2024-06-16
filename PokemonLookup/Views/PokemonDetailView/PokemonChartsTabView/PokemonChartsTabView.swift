//
//  PokemonChartsTabView.swift
//  PokemonLookup
//
//  Created by Quinn on 16/06/2024.
//

import SwiftUI

struct PokemonChartsTabView: View {
    
    @State var viewModel: ViewModel
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            StatsChartView(viewModel: viewModel.statsChartViewModel)
                .tag(0)
            WeightChartView(viewModel: viewModel.weightChartViewModel)
                .tag(1)
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .background {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.background)
                .opacity(0.4)
        }
        .frame(height: 300)
    }
}

#Preview {
    PokemonChartsTabView(viewModel: .init(pokemon: MockData.pokemon))
}
