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
  @StateObject private var messageManager: OnboardingGuideMessageManager
  @State private var task: Task<Void, Never>?
  
  init(nickname: String = "탱강이") {
    self.nickname = nickname
    _messageManager = StateObject(wrappedValue: OnboardingGuideMessageManager(guideMessage: .introduction(nickname: nickname)))
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
      
      styledText(messageManager.guideMessage.text)
      
      Spacer()
    }
    .onAppear() {
      task = Task {
        await messageManager.updateOnboardingMessage(after: 4, message: .selectPants)
      }
    }
    .onDisappear {
        task?.cancel()
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
