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
    Button {
      // store로 action 전달 필요
    } label: {
      BackButton()
    }
    
    Spacer()
    
    styledText("탱강이")
      .padding(.bottom, 48)
    
    Image(asset: DesignSystemAsset.Icons.onboardingCharacter217)
      .frame(width: 217, height: 217)
      .padding(.bottom, 72)
    
    styledText("사용가능한 닉네임이에요!\n이 닉네임으로 하시겠어요?")
      .padding(.bottom, 137)
    
    Button {
      // store로 action 전달 필요
    } label: {
      OnboardingButton(label: "네", version: 1)
    }
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
