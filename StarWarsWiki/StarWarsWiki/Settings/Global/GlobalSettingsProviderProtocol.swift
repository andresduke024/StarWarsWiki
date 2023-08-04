//
//  GlobalSettingsProviderProtocol.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import swift_dependency_injector

protocol GlobalSettingsProviderProtocol: InjectableDependency {
    var data: [String: Any] { get }
}
