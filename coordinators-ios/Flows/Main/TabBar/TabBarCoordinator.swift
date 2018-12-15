//
//  TabBarCoordinator.swift
//  coordinators-ios
//
//  Created by Elton Lee on 12/13/18.
//  Copyright © 2018 eltonium. All rights reserved.
//

import Foundation
import RxSwift

class TabBarCoordinator: BaseCoordinator<Void> {

    let tabBarViewController: TabBarViewController = TabBarViewController()

    let rootViewController: UIViewController
    let coordinators: [BaseCoordinator<Void>]
    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
        if let firstVC = tabBarViewController.viewControllers?.first {
            coordinators = [TabBarFirstChildCoordinator(rootViewController: firstVC)]
        } else {
            coordinators = []
        }
    }

    override func start() -> Observable<Void> {
        rootViewController.present(tabBarViewController, animated: true, completion: nil)
        return Observable.never()
    }
}
