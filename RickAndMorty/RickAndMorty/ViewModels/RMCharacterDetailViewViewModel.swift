//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 8.12.2023.
//

import Foundation


final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
