//
//  RouterInterface.swift
//
//
//  Created by Antoine Barré on 2/24/22.
//

import Foundation

@MainActor public protocol RouterInterface: AnyObject {
  associatedtype NavigationOption

  func navigate(to option: NavigationOption, animated: Bool)

  func dismiss(animated: Bool, completion: (() -> Void)?)
}

public extension RouterInterface {

  func dismiss(animated: Bool = true, completion: (() -> Void)? = nil) {
    dismiss(animated: animated, completion: completion)
  }
}
