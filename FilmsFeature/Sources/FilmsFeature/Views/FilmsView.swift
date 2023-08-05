//
//  SwiftUIView.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI
import UIComponents

public struct FilmsView: View {
    
    @StateObject
    private var observableObject = FilmsObservableObject()
    
    public init() {}
    
    public var body: some View {
        CarouselView(
            title: "Films",
            items: $observableObject.data
        ).onAppear {
            observableObject.fetch()
        }
    }
}

struct FilmsView_Previews: PreviewProvider {
    static var previews: some View {
        FilmsView()
    }
}
