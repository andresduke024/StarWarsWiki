//
//  FilmsResponse.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation

struct FilmsResponse: Codable {
    let count: Int
    let next: Int?
    let previous: Int?
    let results: [Film]
}
