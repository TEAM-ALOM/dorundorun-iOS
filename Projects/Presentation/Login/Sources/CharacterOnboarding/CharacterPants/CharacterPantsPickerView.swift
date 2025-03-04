//
//  CharacterPantsPickerView.swift
//  Login
//
//  Created by 박근경 on 3/4/25.
//

import SwiftUI
import DesignSystem

struct CharacterPantsPickerView: View {
  var body: some View {
    Text("탱강이")
      .jalnan(.regular, size: 18)
      .foregroundStyle(Color.primary200)
    
    Image(asset: DesignSystemAsset.Icons.onboardingCharacter217)
      .scaledToFit()
      .frame(width: 211, height: 213)
  }
}

#Preview {
  CharacterPantsPickerView()
}
