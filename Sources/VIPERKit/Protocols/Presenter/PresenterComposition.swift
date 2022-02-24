//
//  PresenterComposition.swift
//
//
//  Created by Antoine Barré on 2/24/22.
//

import Foundation

public protocol PresenterComposition: AnyObject {
  associatedtype View: ViewInterface
  associatedtype Interactor: InteractorInterface
  associatedtype Router: RouterInterface

  var view: View { get }
  var interactor: Interactor { get }
  var wireframe: Router { get }
}
