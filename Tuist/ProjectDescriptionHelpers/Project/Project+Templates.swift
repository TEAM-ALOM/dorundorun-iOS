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
          destinations: .iOS,
          product: .staticLibrary,
          bundleId: "io.tuist.\(name)",
          infoPlist: .default,
          sources: ["Sources/**"],
          resources: ["Resources/**",],
          dependencies: dependencies
        )
      ]
    )
  }
}
