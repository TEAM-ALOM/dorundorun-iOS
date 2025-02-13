//
//  OnboardingButton.swift
//  DesignSystem
//
//  Created by 박근경 on 2/14/25.
//

import SwiftUI

// MARK: 완료, 네 버튼
struct OnboardingButton: View {
  
  init(label: String, version: Int) {
    self.label = label
    self.version = version
  
    if version == 1 {
      self.fontColor = .nutralWhite
      self.backColor = .primary200
    } else {
      self.fontColor = .nutral400
      self.backColor = .nutral200
    }
  }
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 50)
        .fill(backColor)
        .frame(width: .infinity, height: 48)
        .padding(.horizontal, 32)
      
      Text(label)
        .jalnan(.regular, size: 18)
        .foregroundStyle(fontColor)
    }
  }
  
  private let label: String
  private let version: Int
  private var fontColor: Color
  private var backColor: Color
}

#Preview {
  OnboardingButton(label: "완료", version: 1)
  OnboardingButton(label: "완료", version: 0)
  OnboardingButton(label: "네", version: 1)
}
