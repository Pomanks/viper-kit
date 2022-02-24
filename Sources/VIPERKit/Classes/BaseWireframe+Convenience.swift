//
//  BaseWireframe+Convenience.swift
//
//
//  Created by Antoine Barré on 2/24/22.
//

import UIKit

public extension BaseWireframe {

  func preparedViewController(inNavigation: Bool = false,
                              modalPresentationStyle: UIModalPresentationStyle = .automatic) -> UIViewController {

    let rootViewController = viewController
    let viewController = inNavigation
      ? UINavigationController(rootViewController: rootViewController)
      : rootViewController

    viewController.modalPresentationStyle = modalPresentationStyle

    if let transitioningDelegate = rootViewController as? UIViewControllerTransitioningDelegate {
      viewController.transitioningDelegate = transitioningDelegate
    }

    if let presentationController = viewController.presentationController,
       let delegate = rootViewController as? UIAdaptivePresentationControllerDelegate {

      presentationController.delegate = delegate
    }
    return viewController
  }

  func present(_ viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
    if splitViewController != nil {
      splitViewController?.present(viewControllerToPresent, animated: animated, completion: completion)

    } else if navigationController != nil {
      navigationController?.present(viewControllerToPresent, animated: animated, completion: completion)

    } else {
      viewController.present(viewControllerToPresent, animated: animated, completion: completion)
    }
  }

  func pushViewController(_ viewController: UIViewController, animated: Bool) {
    navigationController?.pushViewController(viewController, animated: animated)
  }

  func popViewController(animated: Bool) {
    navigationController?.popViewController(animated: animated)
  }

  func popToRootViewController(animated: Bool) {
    navigationController?.popToRootViewController(animated: animated)
  }
}
