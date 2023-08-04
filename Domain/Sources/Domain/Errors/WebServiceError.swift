//
//  WebServiceError.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation

public enum WebServiceError: Error {
    case invalidURL
    case statusCode(Int)
    case fail
}
