//
//  StatsChartView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct StatsChartView: View {
    
    @State var viewModel: ViewModel
    @State private var statNameLabelWidth: CGFloat? = nil
    @State private var statValueLabelWidth: CGFloat? = nil
    
    var body: some View {
        VStack {
            Text("Statistics")
                .font(.body)
            Spacer()
            ForEach(viewModel.statsArray, id: \.name) { stat in
                HStack(spacing: 10) {
                    Text(stat.name)
                        .lineLimit(1)
                        .font(.caption)
                        .foregroundStyle(Color.gray)
                        .frame(width: statNameLabelWidth, alignment: .trailing)
                        // Background using PreferenceKey, to ensure each stats name label in every HStack is the same width (irreespective of length of text)
                        .background {
                            GeometryReader { geo in
                                Color.clear
                                    .preference(key: WidthPreferenceKey.self, value: geo.size.width)
                            }
                        }
                        .onPreferenceChange(WidthPreferenceKey.self) { value in
                            statNameLabelWidth = max(value, statNameLabelWidth ?? 0)
                        }
                        .layoutPriority(1)
                    
                    StatBarView(value: stat.value, maximum: viewModel.maxValue, color: .yellow, barWidth: 10)
                        .layoutPriority(0)
                    
                    Text(stat.value.description)
                        .lineLimit(1)
                        .font(.footnote)
                        .foregroundStyle(Color(uiColor: .systemGray))
                        .frame(width: statValueLabelWidth, alignment: .trailing)
                        // Background using PreferenceKey, to ensure each stats value label in every HStack is the same width (irreespective of length of text)
                        .background {
                            GeometryReader { geo in
                                Color.clear
                                    .preference(key: WidthPreferenceKey.self, value: geo.size.width)
                            }
                        }
                        .onPreferenceChange(WidthPreferenceKey.self) { value in
                            statValueLabelWidth = max(value, statValueLabelWidth ?? 0)
                        }
                        .layoutPriority(1)
                    
                }
                .accessibilityElement()
                .accessibilityLabel(stat.name + stat.value.description)
            }
            Spacer()
        }
        .padding(10)
    }
}

#Preview {
    StatsChartView(viewModel: .init(stats: MockData.pokemonStats))
}
