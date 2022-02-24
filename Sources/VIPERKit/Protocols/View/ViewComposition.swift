//
//  ViewComposition.swift
//
//
//  Created by Antoine Barré on 2/24/22.
//

import Foundation

public protocol ViewComposition {
  associatedtype Presenter: PresenterInterface

  var presenter: Presenter { get }
}
