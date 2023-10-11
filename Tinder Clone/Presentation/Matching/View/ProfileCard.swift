//
//  ProfileCard.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import SwiftUI
import YogaSwiftUI

struct ProfileCard: View {
    
    @State private var translationX: CGFloat = 0
    @State private var translationY: CGFloat = 0
    @State private var rotation: Double = 0
    @State private var pictureIndex = 0
    let profile: Profile
    
    let onLikeAction: () -> ()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            AsyncImage(url: profile.profilePictureURLs[pictureIndex]) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height * 0.7)
                    .clipped()
                    .overlay {
                        HStack(spacing: 0) {
                            Rectangle().foregroundColor(.red.opacity(0.001))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .onTapGesture {
                                    if pictureIndex > 0 {
                                        pictureIndex -= 1
                                    }
                                }
                            Rectangle().foregroundColor(.black.opacity(0.001))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .onTapGesture {
                                    if pictureIndex < profile.profilePictureURLs.count {
                                        pictureIndex += 1
                                    }
                                }
                        }
                        .frame(maxHeight: .infinity)
                    }
            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray)
            }
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    profileName
                    if pictureIndex == 0 {
                        if profile.tags.count < 3 {
                            tagsGrid
                        }
                        description
                    }
                    if pictureIndex == 1 {
                        if profile.tags.count >= 3 {
                            tagsGrid
                        }
                    }
                    if pictureIndex > 1 {
                        location
                    }
                }
                buttonsStack
            }
            .padding()
            .padding(.top, 20)
            .background {
                LinearGradient(colors: [.black, .clear], startPoint: .bottom, endPoint: .top)
            }
        }
        .overlay(alignment: .top) {
            if profile.profilePictureURLs.count > 1 {
                picturesIndicator
            }
        }
        .cornerRadius(16)
        .offset(x: translationX, y: translationY)
        .rotationEffect(.degrees(rotation))
        .padding()
    }
    
    private var buttonsStack: some View {
        HStack {
            CircleButton(style: .rewind, action: {})
            Spacer()
            CircleButton(style: .dislike, action: {
                withAnimation(.easeOut(duration: 1)) {
                    translationX = -UIScreen.main.bounds.width * 2
                    translationY = -20
                    rotation = -20
                }
            })
            Spacer()
            CircleButton(style: .superlike, action: {})
            Spacer()
            CircleButton(style: .like, action: {
                withAnimation(.easeOut(duration: 1)) {
                    translationX = UIScreen.main.bounds.width * 2
                    translationY = 20
                    rotation = 20
                }
                onLikeAction()
            })
            Spacer()
            CircleButton(style: .boost, action: {})
        }
    }
    
    private var description: some View {
        Text(profile.description)
            .foregroundStyle(.white)
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
                Text(profile.name)
                    .font(.system(size: 40, weight: .bold))
                Text("\(profile.age)")
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
    
    private var tagsGrid: some View {
        Flex(direction: .row, justifyContent: .flexStart, alignItems: .center, wrap: .wrap, rowGap: 8, columnGap: 8) {
            TagPill(tag: "Snowboarding", mode: .common)
            ForEach(profile.tags, id: \.self) { tag in
                TagPill(tag: tag, mode: .classic)
            }
        }
        .frame(height: 70)
    }
}

#Preview {
    ProfileCard(profile: .previewProfile, onLikeAction: {})
}
