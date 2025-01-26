//
//  Project+App.swift
//  ProjectDescriptionHelpers
//
//  Created by eunseou on 1/26/25.
//

import ProjectDescription

extension Project {
  public static func App(dependencies: [TargetDependency] = [], infoPlist: InfoPlist = .default) -> Project {
    return Project(
      name: "Dorundorun",
      targets: [
        .target(
          name: "Dorundorun",
          destinations: Environment.destinations,
          product: .app,
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
