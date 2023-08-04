//
//  DIManager.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import Domain
import swift_dependency_injector

struct DIManager {
    static func start() {
        let injector = Injector.global
        
        injector.register(GlobalSettingsProviderProtocol.self, implementation: GlobalSettingsProvider.instance)
        injector.register(EnvironmentValuesProviderProtocol.self, implementation: EnvironmentValuesProvider.instance)
    }
}
