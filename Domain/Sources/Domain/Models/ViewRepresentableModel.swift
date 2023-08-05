//
//  ViewRepresentableModel.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation

public protocol ViewRepresentableModel {
    var viewId: String { get }
    var viewTitle: String? { get }
    var viewImageSrc: String? { get }
}
