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
    Text("CharacterPantsIntroView")

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
