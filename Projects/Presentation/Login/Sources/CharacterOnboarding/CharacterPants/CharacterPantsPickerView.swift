//
//  CharacterPantsPickerView.swift
//  Login
//
//  Created by 박근경 on 3/4/25.
//

import SwiftUI
import DesignSystem

struct CharacterPantsPickerView: View {
  let columns: [GridItem] = [
    GridItem(.flexible(), spacing: 18),
    GridItem(.flexible(), spacing: 18),
    GridItem(.flexible(), spacing: 0)
  ]
  
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
      
      VStack(spacing: 0) {
        Text("바지 색상을 선택해주세요.")
          .suit(.regular, size: 15)
          .foregroundStyle(Color.nutral600)
          .padding(.bottom, 24)
        
        Rectangle()
          .fill(Color.nutral200)
          .frame(height: 4)
        
        Spacer()
          .frame(height: 24)
        
        LazyVGrid(columns: [
          GridItem(.flexible(), spacing: 18),
          GridItem(.flexible(), spacing: 18),
          GridItem(.flexible(), spacing: 0)
        ], spacing: 8) {
          ForEach(0..<9, id: \.self) { index in
            Button {
              
            } label: {
              Image(asset: DesignSystemAsset.Icons.clothOnboardingOff88)
                .frame(width: 88, height: 88) // 셀 크기 설정
            }
          }
        }
        .padding(.horizontal, 20)
      }
      .frame(width: .infinity, height: 347)
    }
  }
}

#Preview {
  CharacterPantsPickerView()
}
