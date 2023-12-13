//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 7.12.2023.
//

import Foundation


final class RMCharacterCollectionViewCellViewModel: Hashable, Equatable {
    
    public let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImageUrl: URL?
    
    // MARK: - Init
    
    init(characterName: String,
         characterStatus: RMCharacterStatus,
         characterImageUrl: URL?) {
        
        self.characterName = characterName
        self.characterImageUrl = characterImageUrl
        self.characterStatus = characterStatus
    }
    
    
    public var characterStatusText: String {
        return "Status: \(characterStatus.text)"
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = characterImageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        let request = URLRequest(url: url)
        
        RMImageLoader.shared.downloadImage(url, completion: completion)
        
    }
    
    // MARK: -Hashable
     
    static func == (lhs: RMCharacterCollectionViewCellViewModel, rhs: RMCharacterCollectionViewCellViewModel) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(characterName)
        hasher.combine(characterStatus)
        hasher.combine(characterImageUrl)
    }
}
