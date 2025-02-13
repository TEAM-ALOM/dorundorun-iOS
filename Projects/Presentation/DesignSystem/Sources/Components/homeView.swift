//
//  homeView.swift
//  dorundorun
//
//  Created by 박서현 on 1/24/25.
//

import SwiftUI

struct homeView: View {

  @State private var isRunning = false
  @State private var userAchievements: String = "유저 업적"
  @State private var userNickname: String = "탱강이"
//  @State private var userTier: String = "tierImage"
  // 티어 이미지 확정 및 추가되면 수정할 부분
  
    var body: some View {
      VStack {
        TopBarView()
        
        HStack() {
          Rectangle()
            .frame(width: 142, height: 66)
            .foregroundStyle(Color.nutral100)
            .padding()
          // 날씨, 날짜 정보
          
          Spacer()
        }
        .padding(.bottom, 23)
        
        Text(userAchievements)
          .font(DesignSystemFontFamily.Suit.medium.swiftUIFont(size: 10))
          .foregroundStyle(Color.nutral600)
          .frame(width: 118, height: 36)
          .background(
              Rectangle()
                .foregroundStyle(Color.nutral100)
          )
          .padding(.bottom, 9)
        
        HStack {
          Rectangle()
            .frame(width: 18, height: 18)
            .foregroundStyle(Color.nutral100)
          // 티어
          
          Text(userNickname)
            .font(DesignSystemFontFamily.Jalnan2.regular.swiftUIFont(size: 18))
            .foregroundStyle(Color.primary200)
            // 닉네임
        }
        .padding(.bottom, 16)
        
        Rectangle()
          .frame(width: 228, height: 260)
          .foregroundStyle(Color.nutral100)
          .padding(.bottom, 32)
        // 캐릭터
        
        Rectangle()
          .frame(width: 188, height: 22)
          .foregroundStyle(Color.nutral100)
          .padding(.bottom, 16)
        // 목표
        // 다른 View로 구현할 예정
        
        Button(action: {
          isRunning.toggle()
        }) {
          Text(isRunning ? "러닝 중" : "러닝 시작")
            .font(DesignSystemFontFamily.Jalnan2.regular.swiftUIFont(size: 22))
            .foregroundStyle(isRunning ? Color.nutralWhite : Color.primary200)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(width: 311, height: 51)
        .background(
            Capsule()
              .fill(isRunning ? Color.primary200 : Color.nutralWhite)
              .strokeBorder(Color.nutral100              .opacity(0.05))
              .shadow(radius: 2)
        )
        .padding(.bottom, 12)

        Text("목표가 얼마 남지 않았어요!")
          .font(DesignSystemFontFamily.Suit.medium.swiftUIFont(size: 10))
          .foregroundStyle(Color.nutral600)
          .padding(.bottom, 32)
      }
    }
}

#Preview {
    homeView()
}
