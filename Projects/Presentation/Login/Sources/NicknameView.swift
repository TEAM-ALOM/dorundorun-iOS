//
//  NicknameView.swift
//  Login
//
//  Created by 박근경 on 2/14/25.
//

import SwiftUI
import DesignSystem

struct NicknameView: View {
  @State private var isNicknameCompleted: Bool = false
  @State private var nickname: String = ""
  @FocusState private var isKeyboardFocused: Bool
  
  var body: some View {
    VStack {
      Spacer()
        .frame(height: 191)
      
      Group {
        Text("안녕하세요!")
          .padding(.bottom, PaddingState.defaultState.firstTextPadding)
        
        // 온보딩 캐릭터 파일 추가가 안됨 - 임시로 넣어둠
        Rectangle()
          .frame(width: 217, height: 217)
          .foregroundStyle(Color.black)
          .padding(.bottom, PaddingState.defaultState.imagePadding)
        
        Text("여러분과 함께 러닝을 하게 될")
          .padding(.bottom, PaddingState.defaultState.secondTextPadding)
      }
      .jalnan(.regular, size: 18)
      .foregroundStyle(Color.primary200)
    }
    
    ZStack {
      RoundedRectangle(cornerRadius: 50)
        .stroke(Color.primary200, lineWidth: 1)
        .fill(Color.white)
        .frame(width: .infinity, height: 48)
      
      if ( !isKeyboardFocused ) {
        Text("사용할 닉네임을 입력해주세요.")
          .suit(.light, size: 15)
          .foregroundStyle(Color.nutral500)
      }
      
      TextField("", text: $nickname)
        .jalnan(.regular, size: 18)
        .foregroundStyle(Color.nutralBlack)
        .multilineTextAlignment(.center)
        .focused($isKeyboardFocused)
    }
    .padding(.horizontal, 32)
    isNicknameCompleted ?
    OnboardingButton(label: "완료", version: 1).padding(.bottom, 37).padding(.top, 91) :
    OnboardingButton(label: "완료", version: 0).padding(.bottom, 37).padding(.top, 91)
  }
  
  private var padding: PaddingState { isKeyboardFocused ? .keyboardActive : .defaultState }
      
  enum PaddingState {
    case defaultState
    case keyboardActive
      
    var firstTextPadding: CGFloat {
      switch self {
      case .defaultState:
        return 48
      case .keyboardActive:
        return 20
      }
    }
    
    var secondTextPadding: CGFloat {
      switch self {
      case .defaultState:
        return 24
      case .keyboardActive:
        return 16
      }
    }
    
    var imagePadding: CGFloat {
      switch self {
      case .defaultState:
        return 72
      case .keyboardActive:
        return 32
      }
    }
  }
}

#Preview {
  NicknameView()
}
