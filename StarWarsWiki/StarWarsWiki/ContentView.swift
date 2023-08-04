//
//  ContentView.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI
import FilmsFeature

struct ContentView: View {
    var body: some View {
        ScrollView {
            FilmsView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
