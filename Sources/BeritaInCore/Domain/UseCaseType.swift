//
//  UseCaseType.swift
//  BeritaInCore
//
//  Created by Fakhri Rasyid Saputro on 20/12/24.
//

import Foundation

public protocol UseCaseType {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request) -> Response
}
