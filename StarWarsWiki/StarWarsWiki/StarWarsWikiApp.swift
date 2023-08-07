//
//  StarWarsWikiApp.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI

@main
struct StarWarsWikiApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() { AppSetup.start() }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

