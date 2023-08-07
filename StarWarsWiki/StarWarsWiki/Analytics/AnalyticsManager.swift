//
//  AnalyticsManager.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 5/08/23.
//

import Foundation
import Domain
import FirebaseAnalytics

struct AnalyticsManager: AnalyticsManagerProtocol {
    func sendEvent(_ event: AnalyticsEvent, params: AnalyticsEventParamsModel?) {
        Analytics.logEvent(event.rawValue, parameters: params?.getEventParams())
    }
    
    func setUserId(_ id: String) {
        Analytics.setUserID(id)
    }
    
    func setProperty(_ key: String, value: String?) {
        Analytics.setUserProperty(value, forName: key)
    }
}
