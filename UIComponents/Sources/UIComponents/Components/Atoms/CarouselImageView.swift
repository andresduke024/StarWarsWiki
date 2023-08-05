//
//  CarouselImageView.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI

struct CarouselImageView: View {
    
    private let radius: CGFloat = 16
    
    let image: String

    var body: some View {
        Image(image, bundle: .module)
            .resizable()
            .frame(height: 300)
            .scaledToFit()
            .clipped()
            .cornerRadius(radius)
            .overlay(
                RoundedRectangle(cornerRadius: radius)
                    .stroke(Color(white: 0.4))
            )
            .shadow(radius: 3)
    }
}

struct CarouselImageView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselImageView(image: "Test")
    }
}
