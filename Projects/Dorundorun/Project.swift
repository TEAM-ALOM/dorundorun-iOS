//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by eunseou on 1/26/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let infoPlist: InfoPlist = .extendingDefault(
  with: [
    "UILaunchStoryboardName": "LaunchScreen.storyboard",
  ]
)

let project = Project.App(infoPlist: infoPlist)
