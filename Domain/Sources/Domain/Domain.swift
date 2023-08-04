//
//  Domain.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import swift_dependency_injector

public struct Domain {
    public static func setup() {
        let injector = Injector.global
        
        injector.register(WebServiceRepositoryProtocol.self, implementation: WebServiceRepository.instance)
    }
}
