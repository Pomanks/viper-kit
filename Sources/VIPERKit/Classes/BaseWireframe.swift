//
//  BaseWireframe.swift
//
//
//  Created by Antoine Barré on 2/24/22.
//

import UIKit

@MainActor open class BaseWireframe<ViewController> where ViewController: UIViewController {

  // MARK: Members

  public var viewController: ViewController {
    defer {
      temporaryStoredViewController = nil
    }
    return _viewController
  }

  public var navigationController: UINavigationController? {
    viewController.navigationController
  }

  public var splitViewController: UISplitViewController? {
    viewController.splitViewController
  }

  public var tabBarController: UITabBarController? {
    viewController.tabBarController
  }

  // MARK: Initializers

  private unowned var _viewController: ViewController

  // We need it in order to retain view controller reference upon first access
  private var temporaryStoredViewController: ViewController?

  public init(title: String? = nil, viewController: ViewController) {
    viewController.title = title

    temporaryStoredViewController = viewController
    _viewController = viewController
  }
}
