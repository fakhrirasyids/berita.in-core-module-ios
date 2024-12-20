//
//  Repository.swift
//  BeritaInCore
//
//  Created by Fakhri Rasyid Saputro on 20/12/24.
//

import RxSwift

public protocol Repository {
    associatedtype Request
    associatedtype Response
    
    func executeObservable(request: Request) -> Observable<Response>
    func executeCompletable(request: Request) -> Completable
}

public extension Repository {
    func executeObservable(request: Request) -> Observable<Response> {
        return Observable.never()
    }
    
    func executeCompletable(request: Request) -> Completable {
        return Completable.create { completable in
            completable(.completed)
            return Disposables.create()
        }
    }
}
