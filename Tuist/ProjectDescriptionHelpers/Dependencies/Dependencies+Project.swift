//
//  Dependencies.swift
//  Packages
//
//  Created by eunseou on 1/25/25.
//

import ProjectDescription

public extension TargetDependency {
  static func presentation(_ target: Modules.Presentation) -> TargetDependency {
    return .project(
      target: target.rawValue,
      path: .relativeToRoot(target.path)
    )
  }
  
  static func data(_ target: Modules.Presentation) -> TargetDependency {
    return .project(
      target: target.rawValue,
      path: .relativeToRoot(target.path)
    )
  }
  
  static func domain(_ target: Modules.Presentation) -> TargetDependency {
    return .project(
      target: target.rawValue,
      path: .relativeToRoot(target.path)
    )
  }
  
  static func utility(_ target: Modules.Presentation) -> TargetDependency {
    return .project(
      target: target.rawValue,
      path: .relativeToRoot(target.path)
    )
  }
}
