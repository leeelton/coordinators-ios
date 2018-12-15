//
//  MainViewModel.swift
//  coordinators-ios
//
//  Created by Elton Lee on 12/13/18.
//  Copyright © 2018 eltonium. All rights reserved.
//

import Foundation
import RxSwift

struct MainViewModel {

    // Inputs

    let tapButton: AnyObserver<Void>

    // Ouputs

    let tappedButton: Observable<Void>

    init() {
        let _tapButton = PublishSubject<Void>()
        tapButton = _tapButton.asObserver()
        tappedButton = _tapButton.asObservable()
    }
}
