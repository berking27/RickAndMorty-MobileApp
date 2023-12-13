//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 6.12.2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String, CaseIterable,Hashable {
    case character
    case location
    case episode
}
