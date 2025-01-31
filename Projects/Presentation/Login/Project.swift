//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by eunseou on 1/26/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.staticLibrary(
  name: "Login",
  dependencies: [.presentation(.DesignSystem)]
)
