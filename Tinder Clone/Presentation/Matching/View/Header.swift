//
//  Header.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Image("profile_picture")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .clipShape(Circle())
            Spacer()
            Image("tinder_banner_logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 65)
            Spacer()
            Image(systemName: "bell.fill")
                .foregroundColor(.gray.opacity(0.5))
                .font(.system(size: 30))
        }
    }
}

#Preview {
    Header()
        .padding()
        .previewLayout(.sizeThatFits)
}
