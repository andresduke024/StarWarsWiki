//
//  GlobalSettingsProvider.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation

struct GlobalSettingsProvider {
    private let plist: [String: Any] = {
        guard let dictionary = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        
        return dictionary
    }()
    
    var data: [String: Any] {
        guard let global = plist["GlobalSettings"] as? [String : Any] else {
            fatalError("GlobalVariables not set in plist")
        }

        return global
    }
}
