//
//  ColorViewController.swift
//  coordinators-ios
//
//  Created by Elton Lee on 12/15/18.
//  Copyright © 2018 eltonium. All rights reserved.
//

import UIKit
import RxSwift

class ColorViewController: UIViewController {

    var viewModel: ColorViewModel!
    let disposeBag: DisposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }

    private func setupBindings() {
        viewModel.backgroundColor
            .subscribe(onNext: { [unowned self] (color) in
                self.view.backgroundColor = color
            })
            .disposed(by: disposeBag)

        let tapGesture = UITapGestureRecognizer()
        view.addGestureRecognizer(tapGesture)
        tapGesture.rx.event
            .map { (_) -> Void in ()}
            .bind(to: viewModel.tapScreen)
            .disposed(by: disposeBag)
    }
}
