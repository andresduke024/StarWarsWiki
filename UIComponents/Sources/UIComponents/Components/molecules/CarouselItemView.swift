//
//  CarouselItemView.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI
import Domain

struct CarouselItemView: View {
    
    private let width: CGFloat = 200
    let model: any ViewRepresentableModel
    
    var body: some View {
        if let image = model.viewImageSrc {
            VStack(spacing: 8) {
                CarouselImageView(image: image)
                
                if let title = model.viewTitle {
                    CarrouselTextView(title: title)
                }
            }
            .frame(width: width)
        }
    }
}

struct CarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselItemView(model: PreviewModel.model1)
    }
}
