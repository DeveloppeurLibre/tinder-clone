//
//  ProfileCard.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import SwiftUI

struct ProfileCard: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("preview_profile_girl")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    profileName
                    location
                }
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
        .cornerRadius(16)
        .padding()
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
                    .font(.system(size: 40, weight: .bold))
                Text("28")
                    .font(.system(size: 28))
                    .padding(.bottom, 3)
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ProfileCard()
}
