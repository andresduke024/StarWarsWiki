//
//  EnvironmentValuesProviderProtocol.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation

public protocol EnvironmentValuesProviderProtocol {
    func get<T>(_ key: EnvironmentValuesKeys) -> T?
}
