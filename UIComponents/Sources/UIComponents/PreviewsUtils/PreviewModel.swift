//
//  PreviewModel.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import Domain

struct PreviewModel: ViewRepresentableModel {
    var viewId: String
    
    var viewTitle: String?
    
    var viewImageSrc: String?

    init(title: String? = nil, image: String? = nil) {
        self.viewId = UUID().uuidString
        self.viewTitle = title
        self.viewImageSrc = image
    }
}

extension PreviewModel {
    static let model1 = PreviewModel(title: "Test 1", image: "")
    static let model2 = PreviewModel(title: "Test 2", image: "")
    static let model3 = PreviewModel(title: "Test 3", image: "")
}
