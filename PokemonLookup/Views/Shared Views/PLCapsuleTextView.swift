//
//  PLCapsuleTextView.swift
//  PokemonLookup
//
//  Created by Quinn on 05/06/2024.
//

import SwiftUI

struct PLCapsuleTextView: View {
    let text: String
    let size: CGFloat
    let width: CGFloat
    let height: CGFloat
    
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: width, height: height)
                .foregroundStyle(.blue)
            Text(text)
                .font(.system(size: size))
                .foregroundStyle(.white)
                .padding(.horizontal, 50)
        }
    }
}

#Preview {
    PLCapsuleTextView(text: "Test text", size: 25, width: 180, height: 40)
}
