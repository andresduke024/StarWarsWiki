//
//  GetFilmsUseCase.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import Domain
import swift_dependency_injector

struct GetFilmsUseCase: GetFilmsUseCaseProtocol  {
    
    @Injectable
    private var repository: FilmsRepositoryProtocol?
    
    init() {}
    
    func invoke() async throws -> [Film] {
        guard let repository else {
            throw CommonError.nilValue
        }
        
        let response = try await repository.get()
        return response.results
    }
    
    func invoke(url: String) async throws -> Film {
        guard let repository else {
            throw CommonError.nilValue
        }
        
        return try await repository.get(url: url)
    }
}
