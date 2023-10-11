//
//  MatchingView.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import SwiftUI

struct MatchingView: View {
    
    @StateObject var viewModel = MatchingViewModel(presentedProfiles: [])
    @State private var offsetAlert: CGFloat = -150
    @State private var profilesWhoLikedYou: [Profile] = {
        let profiles = Profile.previewProfiles.filter { _ in Bool.random() }
        print("Profiles who liked you: \(profiles.map { $0.name }.joined(separator: ", "))")
        return profiles
    }()
    
    var body: some View {
        VStack(spacing: 0) {
            Header()
                .padding(.horizontal)
            ZStack {
                ForEach(Profile.previewProfiles) { profile in
                    ProfileCard(profile: profile) {
                        if profilesWhoLikedYou.contains(where: { $0.id == profile.id }) {
                            displayAlert()
                        }
                    }
                }
            }
            Spacer()
        }
        .overlay(alignment: .top) {
            MatchAlert(profile: .previewProfile)
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
                .frame(width: UIScreen.main.bounds.width - 20)
                .offset(y: offsetAlert)
        }
    }
    
    private func displayAlert() {
        withAnimation(.easeOut(duration: 0.2)) {
            offsetAlert = 0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            withAnimation(.easeIn(duration: 0.2)) {
                offsetAlert = -150
            }
        }
    }
}

#Preview {
    MatchingView()
}
