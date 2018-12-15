//
//  MainCoordinator.swift
//  coordinators-ios
//
//  Created by Elton Lee on 12/13/18.
//  Copyright © 2018 eltonium. All rights reserved.
//

import Foundation
import RxSwift

class MainCoordinator: BaseCoordinator<Void> {

    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    override func start() -> Observable<Void> {
        let viewModel = MainViewModel()
        let mainViewController = MainViewController.newInstance(viewModel: viewModel)

        viewModel.tappedButton.subscribe { [weak self] (_) in
            _ = self?.goToTabBar(from: mainViewController)
        }.disposed(by: disposeBag)

        window.rootViewController = mainViewController
        window.makeKeyAndVisible()
        return Observable.never()
    }

    private func goToTabBar(from viewController: UIViewController) -> Observable<Void> {
        return coordinate(to: TabBarCoordinator(rootViewController: viewController))
    }
}
