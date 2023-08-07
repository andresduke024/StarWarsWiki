//
//  AnalyticsManagerProtocol.swift
//  
//
//  Created by Andres Duque on 5/08/23.
//

import Foundation
import swift_dependency_injector

public protocol AnalyticsManagerProtocol: InjectableDependency {
    func sendEvent(_ event: AnalyticsEvent, params: AnalyticsEventParamsModel?)
    func setUserId(_ id: String)
    func setProperty(_ key: String, value: String?)
}
