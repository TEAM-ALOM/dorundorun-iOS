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
    "Fonts provided by application": [
      "Jalnan2.otf",
      "Pretendard-Black.otf",
      "Pretendard-Bold.otf",
      "Pretendard-ExtraBold.otf",
      "Pretendard-ExtraLight.otf",
      "Pretendard-Light.otf",
      "Pretendard-Medium.otf",
      "Pretendard-Regular.otf",
      "Pretendard-SemiBold.otf",
      "Pretendard-Thin.otf",
      "SUIT-Bold.otf",
      "SUIT-ExtraBold.otf",
      "SUIT-ExtraLight.otf",
      "SUIT-Heavy.otf",
      "SUIT-Light.otf",
      "SUIT-Medium.otf",
      "SUIT-Regular.otf",
      "SUIT-SemiBold.otf",
      "SUIT-Thin.otf"
    ]
  ]
)


let project = Project.framework(name: "DesignSystem", infoPlist: infoPlist)
