//
//  OnboardingButton.swift
//  DesignSystem
//
//  Created by 박근경 on 2/14/25.
//

import SwiftUI

// MARK: 완료, 네 버튼
public struct OnboardingButton: View {
  
  public init(label: String, activate: Bool) {
    self.label = label
    self.activate = activate
    if activate == true {
      self.fontColor = .nutralWhite
      self.backColor = .primary200
    } else {
      self.fontColor = .nutral400
      self.backColor = .nutral200
    }
  }
  
  public var body: some View {
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
  private let activate: Bool
  private var fontColor: Color
  private var backColor: Color
}

#Preview {
  OnboardingButton(label: "완료", activate: true)
  OnboardingButton(label: "완료", activate: false)
  OnboardingButton(label: "네", activate: true)
}
