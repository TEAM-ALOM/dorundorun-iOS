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
    VStack {
      Button {
        // store로 action 전달 필요
      } label: {
        BackButton()
          .padding(.bottom, 13)
      }
      
      Text("탱강이")
        .jalnan(.regular, size: 18)
        .foregroundStyle(Color.primary200)
        .padding(.bottom, 31)
      
      Image(asset: DesignSystemAsset.Icons.onboardingCharacter217)
        .scaledToFit()
        .frame(width: 211, height: 213)
    }
    .ignoresSafeArea()
    
    Spacer()
      .frame(height: 48)
    
    ZStack {
      Rectangle()
        .fill(Color.white)
        .frame(width: .infinity, height: 406)
        .clipShape(
          .rect(
            topLeadingRadius: 30,
            bottomLeadingRadius: 0,
            bottomTrailingRadius: 0,
            topTrailingRadius: 30
          )
        )
        .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.12), radius: 10, y: -4)
      
      Text("바지 색상을 선택해주세요.")
        .suit(.regular, size: 15)
        .foregroundStyle(Color.nutral600)
      
    }
  }
}

#Preview {
  CharacterPantsPickerView()
}
