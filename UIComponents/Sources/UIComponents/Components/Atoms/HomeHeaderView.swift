//
//  File.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import SwiftUI

public struct HomeHeaderView: View {
    public init() {}
    
    public var body: some View {
        Image(UIComponents.Images.logo, bundle: .module)
            .resizable()
            .frame(maxWidth: .infinity, maxHeight: 100)
            .scaledToFit()
            .padding()
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
