//
//  CurvedBackgroundView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

// Purely aesthetic stylised curved grey shape used as a background view for PokemonDetailView
struct CurvedBackgroundView: View {
    
    @State var ratio: CGFloat = 0.5
    
    var body: some View {

        GeometryReader { geo in
            let diameter = geo.size.width * 3
            Circle()
                .foregroundStyle(Color(uiColor: .systemGray5).gradient)
                .frame(width: diameter, height: diameter)
                .position(x: geo.size.width / 2, y: diameter / 2 + 100)
                .scaleEffect(ratio, anchor: .bottom)
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        ratio = 1
                    }
                }
        }
        .accessibilityHidden(true)
    }
}

#Preview {
    CurvedBackgroundView()
}
