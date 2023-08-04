//
//  SwiftUIView.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI

public struct FilmsView: View {
    
    @StateObject
    private var observableObject = FilmsObservableObject()
    
    public init() {}
    
    public var body: some View {
        VStack {
            ForEach(observableObject.data) { item in
                Text(item.title)
            }
        }.onAppear {
            observableObject.fetch()
        }
    }
}

struct FilmsView_Previews: PreviewProvider {
    static var previews: some View {
        FilmsView()
    }
}
