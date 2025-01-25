//
//  Modules.swift
//  Packages
//
//  Created by eunseou on 1/25/25.
//

import Foundation
public enum ModuleType {
    case App
    case Feature
    case Domain
    case Data
  
  public var rawValue: String {
    switch self {
    case .App:
      return "App"
    case .Feature:
      return "Feature"
    case .Domain:
      return "Domain"
    case .Data:
      return "Data"
    }
  }
}
