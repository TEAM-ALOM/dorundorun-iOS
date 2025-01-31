//
//  Modules.swift
//  Packages
//
//  Created by eunseou on 1/25/25.
//

import Foundation

public enum Modules {
  public enum Presentation: String {
    case DesignSystem
    case Home
  }
  
  public enum Domain: String {
    case UseCase
  }
  
  public enum Data: String {
    case Network
  }
}

extension Modules.Presentation {
  
  var target: String {
    "\(self.rawValue)"
  }
  
  var path: String {
    "Projects/Presentation/\(self.rawValue)"
  }
}

extension Modules.Domain {
  
  var target: String {
    "\(self.rawValue)"
  }
  
  var path: String {
    "Projects/UseCase/\(self.rawValue)"
  }
}

extension Modules.Data {
  
  var target: String {
    "\(self.rawValue)"
  }
  
  var path: String {
    "Projects/Data/\(self.rawValue)"
  }
}
