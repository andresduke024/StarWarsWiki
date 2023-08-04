//
//  AppSetup.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import Domain
import FilmsFeature
import swift_dependency_injector

struct AppSetup {
    static func start() {
        let injector = Injector.global
        
        injector.register(GlobalSettingsProviderProtocol.self, implementation: GlobalSettingsProvider.instance)
        injector.register(EnvironmentValuesProviderProtocol.self, implementation: EnvironmentValuesProvider.instance)
        
        Domain.setup()
        FilmsFeature.setup()
    }
}
