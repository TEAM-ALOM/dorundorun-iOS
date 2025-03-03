//
//  CharacterPantsIntroView.swift
//  Login
//
//  Created by 박근경 on 3/3/25.
//

import SwiftUI
import DesignSystem

struct CharacterPantsIntroView: View {
  var body: some View {
    styledText("탱강이")
    
    styledText("탱강이님, 반갑습니다!\n두런이를 꾸미러 가볼까요?")
  }
}

// 동일한 속성의 텍스트를 함수로 사용
private extension CharacterPantsIntroView {
  func styledText(_ text: String, color: Color = Color.primary200) -> some View {
    Text(text)
      .jalnan(.regular, size: 18)
      .foregroundStyle(color)
      .multilineTextAlignment(.center)
  }
}

#Preview {
  CharacterPantsIntroView()
}
