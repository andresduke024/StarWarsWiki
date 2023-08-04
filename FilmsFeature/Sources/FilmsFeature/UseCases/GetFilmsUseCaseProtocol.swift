//
//  File.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import swift_dependency_injector

protocol GetFilmsUseCaseProtocol: InjectableDependency {
    func invoke() async throws -> [Film]
    
    func invoke(url: String) async throws -> Film
}


