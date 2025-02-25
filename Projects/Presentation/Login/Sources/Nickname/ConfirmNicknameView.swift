//
//  ConfirmNicknameView.swift
//  Login
//
//  Created by 박근경 on 2/24/25.
//

import SwiftUI
import DesignSystem

struct ConfirmNicknameView: View {
  var body: some View {
    styledText("탱강이")
    
    styledText("사용가능한 닉네임이에요!\n이 닉네임으로 하시겠어요?")
  }
}

// 동일한 속성의 텍스트를 함수로 사용
private extension ConfirmNicknameView {
  func styledText(_ text: String, color: Color = Color.primary200) -> some View {
    Text(text)
      .jalnan(.regular, size: 18)
      .foregroundStyle(color)
      .multilineTextAlignment(.center)
  }
}

#Preview {
  ConfirmNicknameView()
}
