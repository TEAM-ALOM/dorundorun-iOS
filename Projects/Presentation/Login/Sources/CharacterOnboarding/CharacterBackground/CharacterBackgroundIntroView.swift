//
//  CharacterBackgroundIntroVeiw.swift
//  Login
//
//  Created by 박근경 on 3/6/25.
//

import SwiftUI
import DesignSystem

struct CharacterBackgroundIntroView: View {
  var body: some View {
    Image(asset: DesignSystemAsset.Icons.onboardingCharacter217)
      .frame(width: 217, height: 217)
      .padding(.bottom, 72)
    
  }
}

#Preview {
  CharacterBackgroundIntroView()
}
