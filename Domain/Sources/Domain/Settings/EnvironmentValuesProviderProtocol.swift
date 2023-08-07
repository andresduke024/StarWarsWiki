//
//  EnvironmentValuesProviderProtocol.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import swift_dependency_injector

public protocol EnvironmentValuesProviderProtocol: InjectableDependency {
    func get<T>(_ key: EnvironmentValuesKeys) -> T?
    
    func getDeviceId() -> String?
}
