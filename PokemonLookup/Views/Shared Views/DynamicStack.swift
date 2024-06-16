//
//  DynamicStack.swift
//  PokemonLookup
//
//  Created by Quinn on 16/06/2024.
//

import SwiftUI

struct DynamicStack<Content: View>: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var horizontalAlignment = HorizontalAlignment.center
    var verticalAlignment = VerticalAlignment.center
    var spacing: CGFloat?
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        Group {
            if verticalSizeClass == .compact {
                HStack(alignment: verticalAlignment, spacing: spacing, content: content)
            } else {
                VStack(alignment: horizontalAlignment, spacing: spacing, content: content)
            }
        }
    }
}

#Preview {
    DynamicStack {
        Text("One")
        Text("Two")
    }
}
