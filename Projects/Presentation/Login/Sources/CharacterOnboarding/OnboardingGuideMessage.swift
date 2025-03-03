//
//  OnboardingGuideMessage.swift
//  Login
//
//  Created by 박근경 on 3/3/25.
//

import SwiftUI

enum OnboardingGuideMessage {
  case introduction(nickname: String)
  case selectPants
  case selectBackground
  case finalWelcome
  
  var text: String {
    switch self {
    case .introduction(let nickname):
      return "\(nickname)님, 반갑습니다!\n두런이를 꾸미러 가볼까요?"
    case .selectPants:
      return "이곳에서 바지 색상을 바꿀 수 있어요!"
    case .selectBackground:
      return "마지막으로 배경색을 선택해주세요!"
    case .finalWelcome:
      return "이제 달릴 준비가 되었어요!"
    }
  }
}

class OnboardingGuideMessageManager: ObservableObject {
  @Published var guideMessage: OnboardingGuideMessage
  
  init(guideMessage: OnboardingGuideMessage) {
    self.guideMessage = guideMessage
  }
  
  func updateOnboardingMessage(after seconds: Double, message: OnboardingGuideMessage) async {
    let nanoseconds = UInt64(seconds * 1_000_000_000)
    
    do {
      try await Task.sleep(nanoseconds: nanoseconds)
      
      await MainActor.run {
        guard !Task.isCancelled else { return }
        withAnimation {
          self.guideMessage = message
        }
      }
    } catch {
      print("Task.sleep 오류 발생: \(error)")
    }
  }
}
