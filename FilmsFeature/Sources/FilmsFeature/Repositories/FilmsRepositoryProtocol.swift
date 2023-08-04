//
//  FilmsRepositoryProtocol.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import swift_dependency_injector

protocol FilmsRepositoryProtocol: InjectableDependency {
    func get() async throws -> FilmsResponse
    func get(url: String) async throws -> Film
}
