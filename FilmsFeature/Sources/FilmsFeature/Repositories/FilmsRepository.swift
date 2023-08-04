//
//  FilmsRepository.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import Domain
import swift_dependency_injector

struct FilmsRepository: FilmsRepositoryProtocol {
    
    @Injectable
    private var webService: WebServiceRepositoryProtocol?
    
    @Injectable
    private var environmentValuesProvider: EnvironmentValuesProviderProtocol?
    
    init() {}
    
    func get() async throws -> FilmsResponse {
        let serviceURL: String? = environmentValuesProvider?.get(.serviceURL)
        
        let url = (serviceURL ?? "") + Endpoints.films
        
        guard let webService else {
            throw WebServiceError.fail
        }
        
        return try await webService.fetch(url)
    }
    
    func get(url: String) async throws -> Film {
        guard let webService else {
            throw WebServiceError.fail
        }
        
        return try await webService.fetch(url)
    }
}
