//
//  AnalyticsEventParamsModel.swift
//  
//
//  Created by Andres Duque on 5/08/23.
//

import Foundation

public protocol AnalyticsEventParamsModel {
    func getEventParams() -> [String: Any]
}
