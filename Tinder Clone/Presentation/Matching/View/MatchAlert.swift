//
//  MatchAlert.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 11/10/2023.
//

import SwiftUI

struct MatchAlert: View {
    
    let profile: Profile
    
    var body: some View {
        HStack {
            profileImage
            message
        }
        .padding(6)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(LinearGradient(colors: [.green2, .green1], startPoint: .bottomLeading, endPoint: .topTrailing))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
    
    private var profileImage: some View {
        AsyncImage(url: profile.profilePictureURLs.first!) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(Circle())
        } placeholder: {
            Rectangle().foregroundColor(.gray)
        }
    }
    
    private var message: some View {
        Text("Nouveau match ! 😍")
            .foregroundStyle(.white)
            .font(.footnote)
            .bold()
    }
}

#Preview {
    MatchAlert(profile: .previewProfile)
        .padding()
}
