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
    
    isNicknameCompleted ?
    OnboardingButton(label: "완료", version: 1) :
    OnboardingButton(label: "완료", version: 0)
  }
}

#Preview {
  NicknameView()
}
