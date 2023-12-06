//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 6.12.2023.
//

import Foundation


/// Object that represents single API call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoints
    private let endpoint: RMEndpoint
    
    ///  Path components for API if any
    private let pathComponents: [String]
    
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach ({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap ({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    
    /// Computed & Consturcted API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired Http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: collection of path components
    ///   - queryParameters: collection of query parameters
    init(endpoint: RMEndpoint, 
         pathComponents: [String] = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}


extension RMRequest {
    static let listCharacterRequest = RMRequest(endpoint: .character)
}
