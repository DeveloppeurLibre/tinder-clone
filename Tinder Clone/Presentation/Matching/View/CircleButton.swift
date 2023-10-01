//
//  CircleButton.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import SwiftUI

struct CircleButton: View {
    
    let style: Style
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Image(systemName: systemName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: iconSize)
                .fontWeight(iconWeight)
                .rotationEffect(style == .dislike ? .degrees(45) : .zero)
                .foregroundStyle(
                    .linearGradient(colors: colors, startPoint: .bottomLeading, endPoint: .topTrailing)
                )
                .padding(iconPadding)
                .overlay {
                    Circle()
                        .stroke(lineWidth: 1)
                }
                .foregroundColor(circleColor)
        })
        
    }
    
    enum Style {
        case rewind
        case dislike
        case superlike
        case like
        case boost
    }
    
    private var systemName: String {
        switch style {
        case .rewind:
            return "arrow.counterclockwise"
        case .dislike:
            return "plus"
        case .superlike:
            return "star.fill"
        case .like:
            return "heart.fill"
        case .boost:
            return "bolt.fill"
        }
    }
    
    private var iconWeight: Font.Weight {
        switch style {
        case .rewind:
            return .black
        case .dislike:
            return .black
        case .superlike:
            return .bold
        case .like:
            return .regular
        case .boost:
            return .black
        }
    }
    
    private var iconSize: CGFloat {
        switch style {
        case .rewind, .superlike, .boost:
            return 25
        case .dislike, .like:
            return 30
        }
    }
    
    private var iconPadding: CGFloat {
        switch style {
        case .rewind, .superlike, .boost:
            return 12
        case .dislike, .like:
            return 18
        }
    }

    private var colors: [Color] {
        switch style {
        case .rewind:
            return [.yellow1, .yellow2]
        case .dislike:
            return [.red1, .red2]
        case .superlike:
            return [.blue1, .blue2]
        case .like:
            return [.green1, .green2]
        case .boost:
            return [.purple1, .purple2]
        }
    }
    
    private var circleColor: Color {
        switch style {
        case .rewind:
            return .yellow2
        case .dislike:
            return .red2
        case .superlike:
            return .blue2
        case .like:
            return .green2
        case .boost:
            return .purple2
        }
    }
}

#Preview {
    HStack {
        CircleButton(style: .rewind, action: {})
        CircleButton(style: .dislike, action: {})
        CircleButton(style: .superlike, action: {})
        CircleButton(style: .like, action: {})
        CircleButton(style: .boost, action: {})
    }
}
