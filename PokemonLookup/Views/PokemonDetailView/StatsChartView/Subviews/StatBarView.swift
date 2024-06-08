//
//  StatBarView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct StatBarView: View {
    let value: Int
    let maximum: Int
    let color: Color
    let barWidth: CGFloat
    // State variable to animate bar on appear
    @State var barShowing: Bool = false
    
    var body: some View {
        
            ZStack(alignment: .leading) {
                
                // Background capsule (depicting maximum)
                Capsule()
                    .foregroundStyle(
                        LinearGradient(colors: [Color(uiColor: .systemGray6),
                                                Color(uiColor: .systemGray3)],
                                       startPoint: .bottom, endPoint: .top))
                
                // Foreground capsule (depicting value)
                GeometryReader { geo in
                    Capsule()
                        .foregroundStyle(
                            LinearGradient(colors: [color.darkenByPercentage(by: 10),
                                                    color.lightenByPercentage(by: 40)],
                                           startPoint: .bottom, endPoint: .top))
                        .frame(width: barShowing ? CGFloat(value)/CGFloat(maximum) * geo.size.width : 0)
                        .onAppear {
                            withAnimation(.easeIn(duration: 0.5)) {
                                barShowing = true
                            }
                        }
                }
            }
            .frame(height: barWidth)
    }
}

#Preview {
    StatBarView(value: 50, maximum: 100, color: .red, barWidth: 10)
}
