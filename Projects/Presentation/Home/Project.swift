//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by eunseou on 2/22/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.staticLibrary(
  name: "Home",
  dependencies: [.presentation(.DesignSystem)]
)
