//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 11.12.2023.
//

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {
    
    public let value: String
    public let title: String
    
    init(value: String, title: String) {
        self.value = value
        self.title = title
    }
    
}
