//
//  CarouselView.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI
import Domain

public struct CarouselView: View {
    
    let title: String?
    
    @Binding
    var items: [any ViewRepresentableModel]
    
    public init(title: String?, items: Binding<[any ViewRepresentableModel]>) {
        self.title = title
        self._items = items
    }
    
    public var body: some View {
        HStack {
            if let title {
                SectionTitleView(title)
            }
        }
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(items, id: \.viewId) { item in
                    CarouselItemView(model: item)
                }
            }
        }
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView(
            title: "Films",
            items: .constant([PreviewModel.model1, PreviewModel.model2])
        )
    }
}
