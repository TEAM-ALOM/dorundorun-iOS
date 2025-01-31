//
//  Project+Templates.swift
//  Packages
//
//  Created by eunseou on 1/25/25.
//

import ProjectDescription

extension Project {
  public static func staticLibrary(name: String, dependencies: [TargetDependency] = []) -> Project {
    return Project(
      name: name,
      targets: [
        .target(
          name: name,
          destinations: Environment.destinations,
          product: .staticLibrary,
          bundleId: Environment.bundleId,
          deploymentTargets: Environment.deploymentTarget,
          infoPlist: .default,
          sources: ["Sources/**"],
          dependencies: dependencies
        )
      ]
    )
  }
}
