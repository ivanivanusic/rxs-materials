//
//  PushedEditTaskViewController.swift
//  QuickTodo
//
//  Created by Ivan Ivanušić on 16.06.2023..
//  Copyright © 2023 Ray Wenderlich. All rights reserved.
//

import UIKit

import UIKit
import RxSwift
import RxCocoa
import Action
import NSObject_Rx

class PushedEditTaskViewController: UIViewController, BindableType {
  
  @IBOutlet var titleView: UITextView!
  
  var viewModel: PushedEditTaskViewModel!
  
  func bindViewModel() {
    titleView.text = viewModel.itemTitle
    titleView.rx.text
      .orEmpty
      .bind(to: viewModel.onUpdate.inputs.asObserver())
      .disposed(by: self.rx.disposeBag)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    titleView.becomeFirstResponder()
  }
  
}
