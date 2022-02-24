//
//  InteractorInterface.swift
//
//
//  Created by Antoine Barré on 2/24/22.
//

import Combine
import Foundation

public protocol InteractorInterface: AnyObject {

  var cancellables: Set<AnyCancellable> { get set }
}
