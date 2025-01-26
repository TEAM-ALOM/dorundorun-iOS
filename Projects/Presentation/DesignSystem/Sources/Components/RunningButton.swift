//
//  RunningButton.swift
//  dorundorun
//
//  Created by eunseou on 1/21/25.
//

import SwiftUI

// MARK: - 추후 디자인 및 폰트에 따라 변동될 컴포넌트(임시)
struct RunningButton: View {
  
  init(label: String) {
    self.label = label
  }
  
  var body: some View {
    Text(label)
      .fontWeight(.bold)
      .padding(.vertical, 17)
      .padding(.horizontal, 108)
      .background(
        Rectangle()
          .frame(width: 292, height: 56)
          .cornerRadius(30)
          .foregroundStyle(Color.primary200)
      )
  }
  
  private let label: String
}

#Preview {
  RunningButton(label: "러닝 시작")
  RunningButton(label: "러닝 중")
}
