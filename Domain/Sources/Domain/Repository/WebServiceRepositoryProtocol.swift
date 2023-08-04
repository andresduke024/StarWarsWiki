//
//  WebServiceRepositoryProtocol.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import swift_dependency_injector

public protocol WebServiceRepositoryProtocol: InjectableDependency {
    func fetch<T: Decodable>(_ url: String?) async throws -> T
}
