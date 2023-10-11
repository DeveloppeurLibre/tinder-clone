//
//  MainTabView.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 11/10/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            MatchingView()
                .tabItem {
                    Image(systemName: "flame.fill")
                }
        }
        .accentColor(Color.red1)
    }
}

#Preview {
    MainTabView()
}
