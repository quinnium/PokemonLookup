//
//  PokemonImageView.swift
//  PokemonLookup
//
//  Created by Quinn on 07/06/2024.
//

import SwiftUI

struct PokemonImageView: View {
    // imageURL must be optional, as JSON could have a nil value
    var imageURL: String?
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL ?? "")) { phase in
            switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
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
    PokemonImageView(imageURL: MockData.pokemon.sprites.frontDefault ?? "")
}
