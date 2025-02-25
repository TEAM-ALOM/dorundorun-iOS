//
//  NicknameView.swift
//  Login
//
//  Created by 박근경 on 2/14/25.
//
import SwiftUI
import DesignSystem

struct NicknameView: View {
  @StateObject private var nicknameField = NicknameTextField()
  @FocusState private var isKeyboardFocused: Bool
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
        .stroke(nicknameField.textFieldStyle.strokeColor, lineWidth: 1)
        .fill(Color.white)
        .frame(width: .infinity, height: 48)
      
      if nicknameField.nickname.isEmpty {
        Text("사용할 닉네임을 입력해주세요.")
          .suit(.light, size: 15)
          .foregroundStyle(Color.nutral500)
      }
      
      TextField("", text: $nicknameField.nickname)
        .jalnan(.regular, size: 18)
        .foregroundStyle(Color.nutralBlack)
        .multilineTextAlignment(.center)
        .padding(.horizontal, 10)
        .focused($isKeyboardFocused)
        .onChange(of: nicknameField.nickname) {
          nicknameField.validateNickname()
        }
      
      Text(nicknameField.warningMessage.text)
        .frame(height: 15)
        .suit(.semiBold, size: 15)
        .foregroundStyle(Color(red: 1.0, green: 0.376, blue: 0.376, opacity: 1.0))
        .offset(y: 39)
    }
    .padding(.horizontal, 32)
    
    Button {
      // store로 action 전달 필요
    } label: {
      nicknameField.isNicknameCompleted ?
      OnboardingButton(label: "완료", version: 1).padding(.bottom, 37).padding(.top, 91) :
      OnboardingButton(label: "완료", version: 0).padding(.bottom, 37).padding(.top, 91)
    }
  }
}

// ➕ 닉네임 입력과 관련된 로직 캡슐화
extension NicknameView {
  // 닉네임 입력 상태 관리
  private class NicknameTextField: ObservableObject {
    @Published var nickname: String = ""
    @Published var isNicknameCompleted: Bool = false
    @Published var textFieldStyle: NicknameTextFieldStyle = NicknameTextFieldStyle()
    @Published var warningMessage: NicknameWarningMessage = NicknameWarningMessage()
    
    func validateNickname() {
      guard !nickname.isEmpty else {
        resetValidation()
        return
      }
      
      if nickname.count > 6 {
        updateValidation(error: .tooLong)
      } else if containsSpecialCharacter(nickname) {
        updateValidation(error: .invalidFormat)
      } else {
        updateValidation(error: nil)
      }
    }
    
    private func resetValidation() {
      warningMessage.updateMessage(for: nil)
      textFieldStyle.updateUI(isError: false)
      isNicknameCompleted = false
    }
    
    private func updateValidation(error: NicknameError?) {
      warningMessage.updateMessage(for: error)
      textFieldStyle.updateUI(isError: error != nil)
      isNicknameCompleted = (error == nil)
    }
    
    private func containsSpecialCharacter(_ nickname: String) -> Bool {
      let pattern = "^[a-zA-Z0-9가-힣]+$"
      let regex = try! NSRegularExpression(pattern: pattern)
      return regex.firstMatch(in: nickname, range: NSRange(location: 0, length: nickname.utf16.count)) == nil
    }
  }
  
  // 닉네임 입력 필드 UI 관리
  private class NicknameTextFieldStyle: ObservableObject {
    @Published var strokeColor: Color = .primary200
    
    func updateUI(isError: Bool) {
      self.strokeColor = isError ? Color.red : Color.primary200
    }
  }
  
  // 경고 메시지 관리
  private class NicknameWarningMessage: ObservableObject {
    @Published var text: String = ""
    
    func updateMessage(for error: NicknameError?) {
      self.text = error?.message ?? ""
    }
    
  }
  
  // 경고 메시지 Enum
  private enum NicknameError: String {
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
    
  }
}

#Preview {
  NicknameView()
}
