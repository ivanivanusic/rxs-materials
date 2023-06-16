//
//  PushedEditViewModel.swift
//  QuickTodo
//
//  Created by Ivan Ivanušić on 16.06.2023..
//  Copyright © 2023 Ray Wenderlich. All rights reserved.
//

import Foundation
import RxSwift
import Action

struct PushedEditTaskViewModel {
  
  let itemTitle: String
  let onUpdate: Action<String, Void>
  let disposeBag = DisposeBag()
  
  init(task: TaskItem, coordinator: SceneCoordinatorType, updateAction: Action<String, Void>) {
    itemTitle = task.title
    onUpdate = updateAction
  }
}
