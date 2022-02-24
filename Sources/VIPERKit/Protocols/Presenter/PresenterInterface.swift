//
//  PresenterInterface.swift
//
//
//  Created by Antoine Barré on 2/24/22.
//

import Foundation

@MainActor public protocol PresenterInterface: AnyObject {

  func viewDidLoad()
  func viewWillAppear(_ animated: Bool)
  func viewDidAppear(_ animated: Bool)
  func viewWillDisappear(_ animated: Bool)
  func viewDidDisappear(_ animated: Bool)
}

public extension PresenterInterface {

  func viewDidLoad() {
    fatalError("Method called from view but implementation is missing in presenter.")
  }

  func viewWillAppear(_ animated: Bool) {
    fatalError("Method called from view but implementation is missing in presenter.")
  }

  func viewDidAppear(_ animated: Bool) {
    fatalError("Method called from view but implementation is missing in presenter.")
  }

  func viewWillDisappear(_ animated: Bool) {
    fatalError("Method called from view but implementation is missing in presenter.")
  }

  func viewDidDisappear(_ animated: Bool) {
    fatalError("Method called from view but implementation is missing in presenter.")
  }
}

public extension PresenterInterface where Self: PresenterComposition {}
