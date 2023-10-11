//
//  Profile.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import Foundation

struct Profile {
    let name: String
    let age: Int
    let profilePictureURLs: [URL]
    let description: String
    let tags: [String]
}

extension Profile {
    static let previewProfile: Profile = .init(
        name: "Annie",
        age: 28,
        profilePictureURLs: [
            URL(string: "https://images.pexels.com/photos/1375849/pexels-photo-1375849.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
            URL(string: "https://images.pexels.com/photos/620074/pexels-photo-620074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
            URL(string: "https://images.pexels.com/photos/5393310/pexels-photo-5393310.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
        ], 
        description: "I've been referred to as \"better in person\"\nMy house plants are (mostly) alive and well.\nProfessional danser 💃🏻",
        tags: ["Reading", "Travel", "Surfing", "Shoping"]
    )
}
