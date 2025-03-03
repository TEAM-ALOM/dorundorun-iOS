//
//  CharacterPantsIntroView.swift
//  Login
//
//  Created by 박근경 on 3/3/25.
//

import SwiftUI
import DesignSystem

struct CharacterPantsIntroView: View {
  var nickname: String
  @State var currentGuideText: String
  
  init(nickname: String) {
    self.nickname = nickname
    self.currentGuideText = OnboardingGuideMessage.introduction(nickname: nickname).text
  }

  var body: some View {
    VStack {
      Spacer()
        .frame(height: 137)
      
      styledText(nickname)
        .padding(.bottom, 48)
      
      Image(asset: DesignSystemAsset.Icons.onboardingCharacter217)
        .frame(width: 217, height: 217)
        .padding(.bottom, 72)
      
      styledText(currentGuideText)
      
      Spacer()
    }
    .onAppear() {
      Task {
        try? await Task.sleep(nanoseconds: 4_000_000_000)
        withAnimation {
          currentGuideText = OnboardingGuideMessage.selectPants.text
        }
      }
    }
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
  CharacterPantsIntroView(nickname: "탱강이")
}
