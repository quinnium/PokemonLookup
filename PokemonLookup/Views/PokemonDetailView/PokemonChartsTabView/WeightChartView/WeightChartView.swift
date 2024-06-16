//
//  WeightChartView.swift
//  PokemonLookup
//
//  Created by Quinn on 16/06/2024.
//

import SwiftUI

struct WeightChartView: View {
    
    @State var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("Weight")
                .font(.body)
            Spacer()
            Image(systemName: "scalemass")
                .resizable()
                .scaledToFit()
                .frame(height: 75)
                .scaleEffect(viewModel.imageScale, anchor: .bottom)
            VStack {
                Text(String(viewModel.displayedWeight))
                    .contentTransition(.numericText())
                    .font(.title)
                    .bold()
                Text("hectograms")
                    .opacity(0.5)
            }
            Spacer()
        }
        .padding(.vertical, 10)
        .onAppear {
            withAnimation {
                viewModel.showWeight()
            }
            withAnimation(.spring(duration: 2, bounce: 0.5, blendDuration: 1)) {
                viewModel.imageScale = 1
            }
        }
    }
}

#Preview {
    WeightChartView(viewModel: .init(weight: 39))
}
