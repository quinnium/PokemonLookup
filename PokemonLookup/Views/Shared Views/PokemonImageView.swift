//
//  PokemonImageView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct PokemonImageView: View {
    // imageURL must be optional, as JSON could have a nil value
    let imageURL: String?
    var animate: Bool = false
    @State var offset: CGFloat = -200
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL ?? "")) { phase in
            switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .offset(y: animate ? offset : 0)
                        .onAppear {
                            if animate {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    offset = 0
                                }
                            }
                        }
                case .failure(_):
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color(uiColor: .systemGray4))
                @unknown default:
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color(uiColor: .systemGray4))
                        .padding()
            }
        }
        
        
    }
}

#Preview {
    PokemonImageView(imageURL: MockData.pokemon.sprites.frontDefaultSmall, animate: true)
}
