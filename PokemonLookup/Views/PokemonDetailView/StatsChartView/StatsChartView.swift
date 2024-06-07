//
//  StatsChartView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct StatsChartView: View {
    
    @State var viewModel: ViewModel
    
    var body: some View {
        VStack {
            ForEach(viewModel.statsArray, id: \.name) { stat in
                HStack {
                    Text(stat.name)
                        .font(.caption)
                        .foregroundStyle(Color.gray)
                        .frame(width: 75, alignment: .trailing)
                    StatBarView(value: stat.value, maximum: viewModel.maxValue, color: .red, barWidth: 10)
                    Text(stat.value.description)
                        .font(.footnote)
                        .foregroundStyle(Color(uiColor: .systemGray))
                        .frame(width: 30)
                }
                .padding(.horizontal, 5)
            }
        }
    }
}

#Preview {
    StatsChartView(viewModel: .init(stats: MockData.pokemonStats))
}
