//
//  SectionTitleView.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import SwiftUI

struct SectionTitleView: View {
    
    private let title: String
    
    public init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        VStack {
            HStack {
                TitleView(title: title)
                Spacer()
            }
            
            SectionDividerView()
        }
        .padding(.vertical, 6)
    }
}

struct SectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleView("Test")
    }
}
