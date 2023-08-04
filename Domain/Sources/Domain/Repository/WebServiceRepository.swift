//
//  WebServiceRepository.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation

struct WebServiceRepository: WebServiceRepositoryProtocol {
    init() {}
    
    func fetch<T: Decodable>(_ url: String?) async throws -> T {
        guard let url, let webServiceUrl = URL(string: url) else {
            throw WebServiceError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: webServiceUrl)
        
        guard let response = response as? HTTPURLResponse else {
            throw WebServiceError.fail
        }
        
        guard response.statusCode == 200 else {
            throw WebServiceError.statusCode(response.statusCode)
        }
        
        return try JSONDecoder().decode(T.self, from: data)
    }
}
