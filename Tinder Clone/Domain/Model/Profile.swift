//
//  Profile.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import Foundation

struct Profile: Identifiable {
    let id = UUID()
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
    
    static let previewProfiles: [Profile] = [
        Profile(
            name: "Léa",
            age: 24,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/1375849/pexels-photo-1375849.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/620074/pexels-photo-620074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/5393310/pexels-photo-5393310.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "Passionnée de musique 🎶\nJe suis une grande fan de cuisine italienne.\nJ'adore voyager.",
            tags: ["Music", "Cooking", "Travel"]
        ),
        Profile(
            name: "Camille",
            age: 31,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "Je suis enseignante et j'aime aider les autres.\nJ'adore lire des romans historiques.",
            tags: ["Teaching", "Reading", "History"]
        ),
        Profile(
            name: "Emma",
            age: 29,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/878680/pexels-photo-878680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/878680/pexels-photo-878680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/1021728/pexels-photo-1021728.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/235498/pexels-photo-235498.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "Fervente défenseuse de l'environnement.\nJ'aime les randonnées en montagne.",
            tags: ["Environment", "Hiking"]
        ),
        Profile(
            name: "Lucie",
            age: 26,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/157961/portrait-smile-happy-faces-smiling-157961.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "J'adore les sports nautiques.\nPassionnée de photographie.",
            tags: ["Sports", "Photography", "Water activities"]
        ),
        Profile(
            name: "Clara",
            age: 30,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/1881730/pexels-photo-1881730.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "Je travaille dans la mode.\nJ'aime découvrir de nouveaux endroits.",
            tags: ["Fashion", "Travel"]
        ),
        Profile(
            name: "Sarah",
            age: 28,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/1727015/pexels-photo-1727015.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/2087284/pexels-photo-2087284.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "Passionnée par les films d'animation.\nJe pratique la méditation.",
            tags: ["Animation", "Meditation", "Movies"]
        ),
        Profile(
            name: "Julie",
            age: 27,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/2467394/pexels-photo-2467394.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/2467392/pexels-photo-2467392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "J'aime écrire des poèmes.\nGrande amatrice de thé.",
            tags: ["Writing", "Tea", "Poetry"]
        ),
        Profile(
            name: "Manon",
            age: 32,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/3410378/pexels-photo-3410378.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "Je suis végétarienne et j'aime cuisiner.\nPassionnée par l'histoire de l'art.",
            tags: ["Cooking", "Art history", "Vegetarian"]
        ),
        Profile(
            name: "Marie",
            age: 25,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/4668649/pexels-photo-4668649.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "Passionnée de yoga et de bien-être.\nJ'adore les chats 🐱",
            tags: ["Yoga", "Wellness"]
        ),
        Profile(
            name: "Sophie",
            age: 23,
            profilePictureURLs: [
                URL(string: "https://images.pexels.com/photos/4668554/pexels-photo-4668554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/4668560/pexels-photo-4668560.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!,
                URL(string: "https://images.pexels.com/photos/4668544/pexels-photo-4668544.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")!
            ],
            description: "J'aime le café et les livres.\nAspirante écrivaine.",
            tags: ["Coffee", "Books", "Writing"]
        )
    ]


}
