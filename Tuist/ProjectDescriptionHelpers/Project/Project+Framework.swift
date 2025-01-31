//
//  Project+framework.swift
//  ProjectDescriptionHelpers
//
//  Created by eunseou on 1/26/25.
//

import ProjectDescription

extension Project {
  public static func framework(name: String, dependencies: [TargetDependency] = [], infoPlist: InfoPlist = .default) -> Project {
    return Project(
      name: name,
      targets: [
        .target(
          name: name,
          destinations: Environment.destinations,
          product: .framework,
          bundleId: Environment.bundleId,
          deploymentTargets: Environment.deploymentTarget,
          infoPlist: infoPlist,
          sources: ["Sources/**"],
          resources: ["Resources/**"],
          dependencies: dependencies
        )
      ]
    )
  }
}
