//
//  SectionDividerView.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import SwiftUI

struct SectionDividerView: View {
    var body: some View {
        Divider()
            .frame(height: 1)
            .frame(maxWidth: .infinity)
            .background(Color.white)
    }
}

struct SectionDividerView_Previews: PreviewProvider {
    static var previews: some View {
        SectionDividerView()
    }
}
