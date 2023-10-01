//
//  MatchingView.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import SwiftUI

struct MatchingView: View {
    
    @StateObject var viewModel = MatchingViewModel(presentedProfiles: [])
    
    var body: some View {
        VStack {
    Header()
        }
    }
}

#Preview {
    MatchingView()
}
