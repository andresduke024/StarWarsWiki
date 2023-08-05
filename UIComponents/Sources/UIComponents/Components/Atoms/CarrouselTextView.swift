//
//  CarrouselTextView.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI

struct CarrouselTextView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
    }
}

struct CarrouselTextView_Previews: PreviewProvider {
    static var previews: some View {
        CarrouselTextView(title: "Test")
    }
}
