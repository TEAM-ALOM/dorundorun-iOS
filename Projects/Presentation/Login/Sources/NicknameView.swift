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
  @State private var textFieldStrokeColor: Color = Color.primary200
  
  var body: some View {
    VStack {
      Spacer()
        .frame(height: 191)
      
      Group {
        Text("안녕하세요!")
          .padding(.bottom, PaddingState.defaultState.firstTextPadding)
        
        // 이미지 파일이 원본과 다르게 나옴 - 테두리가 사라지는 문제
        Image(asset: DesignSystemAsset.Icons.onboardingCharacter217)
          .frame(width: 217, height: 217)
          .padding(.bottom, PaddingState.defaultState.imagePadding)
        
        Text("여러분과 함께 러닝을 하게 될")
          .padding(.bottom, PaddingState.defaultState.secondTextPadding)
      }
      .jalnan(.regular, size: 18)
      .foregroundStyle(Color.primary200)
    }
    
    ZStack {
      RoundedRectangle(cornerRadius: 50)
        .stroke(textFieldStrokeColor, lineWidth: 1)
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
        .padding(.horizontal, 10)
      
      if ( nickname.count > 6 ) {
        Text("6자 이하로 입력해주세요.")
          .suit(.semiBold, size: 15)
          .foregroundStyle(Color(red: 1.0, green: 0.376, blue: 0.376, opacity: 1.0))
          .offset(y: 39)
      }
    }
    .padding(.horizontal, 32)
    .onChange(of: nickname) {
      if nickname.count > 6 {
        textFieldStrokeColor = Color(red: 1.0, green: 0.376, blue: 0.376, opacity: 1.0)
      } else {
        textFieldStrokeColor = Color.primary200
      }
    }
  
    isNicknameCompleted ?
    OnboardingButton(label: "완료", version: 1).padding(.bottom, 37).padding(.top, 91) :
    OnboardingButton(label: "완료", version: 0).padding(.bottom, 37).padding(.top, 91)
  }
  
  func containsSpecialCharacter(_ nickname: String) -> Bool {
    let pattern = "^[a-zA-Z0-9가-힣]+$" // ✅ 영문, 숫자, 완성형 한글만 허용
    let regex = try! NSRegularExpression(pattern: pattern)
    
    return regex.firstMatch(in: nickname, range: NSRange(location: 0, length: nickname.utf16.count)) == nil
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
