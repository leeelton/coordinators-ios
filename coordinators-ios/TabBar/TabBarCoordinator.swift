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

    let rootViewController: UIViewController

    init(rootViewController: UIViewController) {
        self.rootViewController = rootViewController
    }

    override func start() -> Observable<Void> {
        let tabBarViewController = TabBarViewController()
        rootViewController.present(tabBarViewController, animated: true, completion: nil)
        return Observable.never()
    }
}
