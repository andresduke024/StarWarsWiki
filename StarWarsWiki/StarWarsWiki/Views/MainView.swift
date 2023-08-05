//
//  MainView.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI
import UIComponents
import FilmsFeature

struct MainView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                HomeHeaderView()
                FilmsView()
            }
        }
        .padding()
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
