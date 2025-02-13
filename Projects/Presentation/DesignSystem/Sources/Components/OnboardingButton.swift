//
//  OnboardingButton.swift
//  DesignSystem
//
//  Created by 박근경 on 2/14/25.
//

import SwiftUI

// MARK: 완료, 네 버튼
struct OnboardingButton: View {
  
  init(label: String) {
    self.label = label
  }
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 50)
        .fill(Color.primary200)
        .frame(width: .infinity, height: 48)
        .padding(.horizontal, 32)
      
      Text(label)
        .jalnan(.regular, size: 18)
        .foregroundStyle(Color.nutralWhite)
    }
  }
  
  private let label: String
}

#Preview {
  OnboardingButton(label: "완료")
  OnboardingButton(label: "네")
  
}
