//
//  CharacterBackgroundIntroVeiw.swift
//  Login
//
//  Created by 박근경 on 3/6/25.
//

import SwiftUI
import DesignSystem

struct CharacterBackgroundIntroView: View {
  private var message: String = OnboardingGuideMessage.selectBackground.text
  
  var body: some View {
    VStack(spacing: 0) {
      Image(asset: DesignSystemAsset.Icons.onboardingCharacter217)
        .frame(width: 217, height: 217)
        .padding(.bottom, 72)
      
      Text(message)
        .jalnan(.regular, size: 18)
        .foregroundStyle(Color.primary200)
    }
  }
}

#Preview {
  CharacterBackgroundIntroView()
}
