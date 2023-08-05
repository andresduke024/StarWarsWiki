//
//  TitleView.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI

struct TitleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .cornerRadius(2)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Test")
    }
}
