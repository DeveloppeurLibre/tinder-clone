//
//  TagPill.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 02/10/2023.
//

import SwiftUI

struct TagPill: View {
    
    let tag: String
    let mode: Mode
    
    var body: some View {
        Text(tag)
            .foregroundStyle(.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(
                Group {
                    switch mode {
                    case .common:
                        LinearGradient(colors: [.red2, .red1], startPoint: .bottomLeading, endPoint: .topTrailing)
                    case .classic:
                        Color.white.opacity(0.3)
                    }
                }
            )
            .cornerRadius(.infinity)
    }
    
    enum Mode {
        case common
        case classic
    }
}

#Preview {
    VStack(spacing: 20) {
        TagPill(tag: "Yoya", mode: .classic)
        TagPill(tag: "Hiking", mode: .common)
    }
    .padding()
    .background(Color.black)
}
