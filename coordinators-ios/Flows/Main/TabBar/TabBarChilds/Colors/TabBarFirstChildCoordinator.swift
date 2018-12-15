//
//  TabBarFirstChildCoordinator.swift
//  coordinators-ios
//
//  Created by Elton Lee on 12/15/18.
//  Copyright © 2018 eltonium. All rights reserved.
//

import Foundation
import RxSwift

class TabBarFirstChildCoordinator: BaseCoordinator<Void> {

    let rootViewController: UIViewController

    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
        super.init()
        nextButtonPressed()
    }

    private func nextButtonPressed() {
        guard let vc = rootViewController as? MainViewController else { return }
        vc.viewModel.tappedButton
            .subscribe(onNext: { [weak self] (_) in
                _ = self?.coordinate(to: RedColorCoordinator(rootViewController: vc))
            })
            .disposed(by: disposeBag)
    }
}
