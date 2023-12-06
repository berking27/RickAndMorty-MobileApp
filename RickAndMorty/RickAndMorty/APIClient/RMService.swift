//
//  RMService.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 6.12.2023.
//

import Foundation
/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singelton instance
    static let shared = RMService()
    
    private init() { }
    
    
    

    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
    
}


