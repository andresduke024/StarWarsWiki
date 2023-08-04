//
//  EnvironmentValuesProvider.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import Domain
import swift_dependency_injector

struct EnvironmentValuesProvider: EnvironmentValuesProviderProtocol {
    @Injectable private var globalSettings: GlobalSettingsProviderProtocol?
    
    init() {}
    
    func get<T>(_ key: EnvironmentValuesKeys) -> T? {
        guard let data = globalSettings?.data[key.rawValue], let value = data as? T else {
            return nil
        }
        
        return value
    }
}
