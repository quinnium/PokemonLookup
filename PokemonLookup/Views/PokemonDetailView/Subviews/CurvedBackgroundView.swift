//
//  CurvedBackgroundView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct CurvedBackgroundView: View {
    
    @State var ratio: CGFloat = 0.5
    
    var body: some View {
        GeometryReader { geometry in
            Circle()
                .foregroundStyle(Color(uiColor: .systemGray5))
                .frame(width: geometry.size.height)
                .scaleEffect(ratio, anchor: .bottom)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                .offset(y: 200)
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.8)) {
                        ratio = 1
                    }
                }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CurvedBackgroundView()
}
