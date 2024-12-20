//
//  Interactor.swift
//  BeritaInCore
//
//  Created by Fakhri Rasyid Saputro on 20/12/24.
//

import RxSwift

open class Interactor<Request, Response, R: Repository>: UseCase
where R.Request == Request, R.Response == Response {
    private let repository: R
    
    public init(repository: R) {
        self.repository = repository
    }
}

public extension Interactor {
    func executeObservable(request: Request) -> Observable<Response> {
        return repository.executeObservable(request: request)
    }
    
    func executeCompletable(request: Request) -> Completable {
        return repository.executeCompletable(request: request)
    }
}
