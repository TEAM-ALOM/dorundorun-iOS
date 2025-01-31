//
//  Envirionment.swift
//  ProjectDescriptionHelpers
//
//  Created by eunseou on 1/26/25.
//

import ProjectDescription

public enum Environment {
  public static let appName: String = "Dorundorun"
  public static let bundleId = "com.dorunies.Dorundorun"
  public static let destinations: Destinations = .iOS
  public static let deploymentTarget: DeploymentTargets = .iOS("17.0")
}
