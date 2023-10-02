//
//  ProfileCard.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import SwiftUI

struct ProfileCard: View {
    
    @State private var pictureIndex = 0
    let profile: Profile
    
    var body: some View {
        ZStack(alignment: .bottom) {
            AsyncImage(url: profile.profilePictureURLs[pictureIndex]) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray)
            }
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    profileName
                    location
                }
                Text(profile.description)
                    .foregroundStyle(.white)
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
        .overlay(alignment: .top) {
            picturesIndicator
        }
        .overlay {
            HStack(spacing: 0) {
                
                Rectangle().foregroundColor(.red.opacity(0.001))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .onTapGesture {
                        print("Droite")
                        if pictureIndex > 0 {
                            pictureIndex -= 1
                        }
                    }
                Rectangle().foregroundColor(.black.opacity(0.001))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .onTapGesture {
                        print("gauche")
                        if pictureIndex < profile.profilePictureURLs.count {
                            pictureIndex += 1
                        }
                    }
            }
            .frame(maxHeight: .infinity)
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
    
    private var picturesIndicator: some View {
        HStack(spacing: 8) {
            ForEach(0..<profile.profilePictureURLs.count) { index in
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(index == pictureIndex ? .white : .black.opacity(0.1))
            }
        }
        .padding()
    }
}

#Preview {
    ProfileCard(profile: .previewProfile)
}
