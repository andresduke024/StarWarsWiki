//
//  File.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import Domain
import UIComponents

extension Film: ViewRepresentableModel {
    var viewId: String { String(episodeID) }
    
    var viewTitle: String? { title }
    
    var viewImageSrc: String? {
        UIComponents.Images.Posters.get(for: episodeID)
    }
}
