//
//  ColorViewModel.swift
//  coordinators-ios
//
//  Created by Elton Lee on 12/15/18.
//  Copyright © 2018 eltonium. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class ColorViewModel {

    // inputs

    let tapScreen: AnyObserver<Void>

    // outputs

    let backgroundColor: Observable<UIColor>
    let tappedScreen: Observable<Void>

    init(color: UIColor) {

        let _backgroundColor = BehaviorSubject<UIColor>(value: color)
        backgroundColor = _backgroundColor.asObservable()

        let _tapScreen = PublishSubject<Void>()
        tapScreen = _tapScreen.asObserver()
        tappedScreen = _tapScreen.asObservable()
    }
}
