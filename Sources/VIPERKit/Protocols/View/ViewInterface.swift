//
//  ViewInterface.swift
//
//
//  Created by Antoine Barré on 2/24/22.
//

import Foundation

@MainActor public protocol ViewInterface {}

public extension ViewInterface where Self: ViewComposition {}
