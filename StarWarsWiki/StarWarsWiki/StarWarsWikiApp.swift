//
//  StarWarsWikiApp.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI

@main
struct StarWarsWikiApp: App {
    
    init() { AppSetup.start() }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
