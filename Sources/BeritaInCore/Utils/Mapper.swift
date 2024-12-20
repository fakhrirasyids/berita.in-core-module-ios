//
//  Mapper.swift
//  BeritaInCore
//
//  Created by Fakhri Rasyid Saputro on 20/12/24.
//

public protocol Mapper {
    associatedtype Responses
    associatedtype Models
    
    func mapResponsesToModels(responses: Responses) -> Models
}
