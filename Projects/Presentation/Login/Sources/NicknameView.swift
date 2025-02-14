//
//  NicknameView.swift
//  Login
//
//  Created by 박근경 on 2/14/25.
//

import SwiftUI
import DesignSystem

struct NicknameView: View {
  @State var isNicknameCompleted: Bool = false
  
  var body: some View {
    VStack {
      Spacer()
        .frame(height: 191)
      
      Group {
        Text("안녕하세요!")
          .padding(.bottom, 48)
        
        // 온보딩 캐릭터 파일 추가가 안됨 - 임시로 넣어둠
        Rectangle()
          .frame(width: 217, height: 217)
          .foregroundStyle(Color.black)
          .padding(.bottom, 72)
        
        Text("여러분과 함께 러닝을 하게 될")
          .padding(.bottom, 24)
      }
      .jalnan(.regular, size: 18)
      .foregroundStyle(Color.primary200)
    }
    
    ZStack {
      RoundedRectangle(cornerRadius: 50)
        .stroke(Color.primary200, lineWidth: 1)
        .fill(Color.white)
        .frame(width: .infinity, height: 48)
        .padding(.horizontal, 32)
      
      Text("사용할 닉네임을 입력해주세요.")
        .suit(.light, size: 15)
        .foregroundStyle(Color.nutral500)
    }
    .padding(.bottom, 91)
    
    isNicknameCompleted ?
    OnboardingButton(label: "완료", version: 1).padding(.bottom, 37) :
    OnboardingButton(label: "완료", version: 0).padding(.bottom, 37)
  }
}

#Preview {
  NicknameView()
}
