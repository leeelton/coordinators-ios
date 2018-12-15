//
//  TabBarViewController.swift
//  coordinators-ios
//
//  Created by Elton Lee on 12/13/18.
//  Copyright © 2018 eltonium. All rights reserved.
//

import UIKit
import RxSwift

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabVCs()
    }

    private func setupTabVCs() {
        let vm1 = MainViewModel()
        let vc1 = MainViewController.newInstance(viewModel: vm1)
        vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        let vm2 = MainViewModel()
        let vc2 = MainViewController.newInstance(viewModel: vm2)
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        setViewControllers([vc1, vc2], animated: false)
    }
}
