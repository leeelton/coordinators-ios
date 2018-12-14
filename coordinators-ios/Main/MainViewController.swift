//
//  ViewController.swift
//  coordinators-ios
//
//  Created by Elton Lee on 12/13/18.
//  Copyright © 2018 eltonium. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {
    
    @IBOutlet private var button: UIButton!
    private(set) var viewModel: MainViewModel!
    private let disposeBag: DisposeBag = DisposeBag()

    static func newInstance(viewModel: MainViewModel) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? MainViewController else { fatalError() }
        viewController.viewModel = viewModel
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }

    private func setupBindings() {
        button.rx.tap
            .bind(to: viewModel.tapButton)
            .disposed(by: disposeBag)
    }

}
