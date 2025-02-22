//
//  NicknameView.swift
//  Login
//
//  Created by 박근경 on 2/14/25.
//
import SwiftUI
import DesignSystem

struct NicknameView: View {
  @State private var nickname: String = ""
  @State private var isNicknameCompleted: Bool = false
  @FocusState private var isKeyboardFocused: Bool
  @State private var textFieldStrokeColor: Color = Color.primary200
  @State private var warningMessage: String = ""
  private var padding: PaddingState { isKeyboardFocused ? .keyboardActive : .defaultState }
  
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
      
      if ( nickname.isEmpty ) {
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
      
      Text(warningMessage)
        .frame(height: 15)
        .suit(.semiBold, size: 15)
        .foregroundStyle(Color(red: 1.0, green: 0.376, blue: 0.376, opacity: 1.0))
        .offset(y: 39)
    }
    .padding(.horizontal, 32)
    .onChange(of: nickname) {
      validateNickname()
    }
    
    Button {
      // store로 action 전달 필요
    } label: {
      isNicknameCompleted ?
      OnboardingButton(label: "완료", version: 1).padding(.bottom, 37).padding(.top, 91) :
      OnboardingButton(label: "완료", version: 0).padding(.bottom, 37).padding(.top, 91)
    }
  }
}

// 키보드 상태에 따른 패딩 값
private extension NicknameView {
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

// 닉네임 검증 오류 메시지
private extension NicknameView {
  enum NicknameError: String {
    case tooLong = "6자 이하로 입력해주세요."
    case invalidFormat = "영문, 숫자, 완성된 한글 조합만 가능해요."
    case duplicate = "중복되는 닉네임입니다."
    
    var message: String {
      return self.rawValue
    }
  }
}

// 닉네임 검증 관련 로직
private extension NicknameView {
  func validateNickname() {
    if nickname.count > 6 {
      setNicknameState(isValid: false, strokeColor: Color(red: 1.0, green: 0.376, blue: 0.376, opacity: 1.0), message: NicknameError.tooLong.message)
    } else if !nickname.isEmpty {
      if !containsSpecialCharacter(nickname) {
        setNicknameState(isValid: true, strokeColor: Color.primary200, message: nil)
      } else {
        setNicknameState(isValid: false, strokeColor: Color.primary200, message: NicknameError.invalidFormat.message)
      }
    } else {
        setNicknameState(isValid: false, strokeColor: Color.primary200, message: nil)
    }
  }
  
  func setNicknameState(isValid: Bool, strokeColor: Color, message: String?) {
    isNicknameCompleted = isValid
    textFieldStrokeColor = strokeColor
    warningMessage = message ?? ""
  }
  
  func containsSpecialCharacter(_ nickname: String) -> Bool {
    let pattern = "^[a-zA-Z0-9가-힣]+$" // ✅ 영문, 숫자, 완성형 한글만 허용
    let regex = try! NSRegularExpression(pattern: pattern)
    
    return regex.firstMatch(in: nickname, range: NSRange(location: 0, length: nickname.utf16.count)) == nil
  }
}

#Preview {
  NicknameView()
}
