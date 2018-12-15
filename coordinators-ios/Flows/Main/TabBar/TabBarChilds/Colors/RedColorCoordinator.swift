//
//  ColorCoordinator.swift
//  coordinators-ios
//
//  Created by Elton Lee on 12/15/18.
//  Copyright © 2018 eltonium. All rights reserved.
//

import Foundation
import RxSwift

class RedColorCoordinator: BaseCoordinator<Void> {

    let rootViewController: UIViewController

    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }

    override func start() -> Observable<Void> {
        let vm = ColorViewModel(color: UIColor.red)
        let vc = ColorViewController()
        vc.viewModel = vm
        vm.tappedScreen
            .subscribe(onNext: { (_) in
                _ = self.coordinate(to: BlueColorCoordinator(rootViewController: vc))
            })
            .disposed(by: disposeBag)
        rootViewController.present(vc, animated: true)
        return Observable.never()
    }
}
