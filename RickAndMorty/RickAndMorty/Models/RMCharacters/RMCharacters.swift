//
//  RMCharacters.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 5.12.2023.
//

import Foundation

struct RMCharacters: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
