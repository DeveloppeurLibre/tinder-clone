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
        VStack(spacing: 16) {
            Header()
                .padding(.horizontal)
                .padding(.top)
            ZStack(alignment: .bottom) {
                Image("preview_profile_girl")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 600)
                    .clipped()
                VStack(alignment: .leading, spacing: 16) {
                    profileName
                    location
                    HStack {
                        CircleButton(style: .rewind, action: {})
                        Spacer()
                        CircleButton(style: .dislike, action: {})
                        Spacer()
                        CircleButton(style: .superlike, action: {})
                        Spacer()
                        CircleButton(style: .like, action: {})
                        Spacer()
                        CircleButton(style: .boost, action: {})
                    }
                }
                .padding()
                .padding(.top, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background {
                    LinearGradient(colors: [.black, .clear], startPoint: .bottom, endPoint: .top)
                }
            }
        
        }
    }
    
    private var location: some View {
        HStack {
            Image(systemName: "mappin.circle")
            Text("4 kilometres away")
        }
        .foregroundStyle(.white)
        .font(.system(size: 20))
    }
    
    private var profileName: some View {
        VStack {
            HStack(alignment: .bottom, spacing: 16) {
                Text("Annie")
                    .font(.system(size: 45, weight: .bold))
                Text("28")
                    .font(.system(size: 32))
                    .padding(.bottom, 4)
            }
            .foregroundColor(.white)
            .frame(height: 40)
        }
    }
}

#Preview {
    MatchingView()
}
