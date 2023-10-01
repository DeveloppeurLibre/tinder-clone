//
//  MatchingViewModel.swift
//  Tinder Clone
//
//  Created by Quentin Cornu on 01/10/2023.
//

import Foundation

@MainActor
class MatchingViewModel: ObservableObject {
    
    var presentedProfiles: [Profile]
    
    init(presentedProfiles: [Profile]) {
        self.presentedProfiles = presentedProfiles
    }
}
