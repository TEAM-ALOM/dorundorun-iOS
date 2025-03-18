//
//  RunningViewModel.swift
//  DesignSystem
//
//  Created by 박서현 on 2/22/25.
//

import SwiftUI

class RunningViewModel: ObservableObject {
  @Published var goalDistance: Double
  @Published var currentDistance: Double
  
  init(goalDistance: Double = 10.0, currentDistance: Double = 4.0) {
    self.goalDistance = goalDistance
    self.currentDistance = currentDistance
  }

  func updateRunningDistance(newDistance: Double) {
    withAnimation {
      self.currentDistance = min(newDistance, goalDistance) // 최대 목표치 이상으로 증가 방지
    }
  }
}
