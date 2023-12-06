//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 6.12.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // 'Alive', 'Dead', 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
