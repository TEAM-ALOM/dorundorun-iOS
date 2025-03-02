//
//  NicknameView.swift
//  Login
//
//  Created by 박근경 on 2/14/25.
//
import SwiftUI
import DesignSystem

struct NicknameView: View {
  @StateObject private var nicknameField = NicknameTextFieldManager()
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
      OnboardingButton(label: "완료", activate: nicknameField.submitButtonState.isEnabled).padding(.bottom, 37)
        .padding(.top, 91)
    }
    .disabled(!nicknameField.submitButtonState.isEnabled)
  }
}

// ➕ 닉네임 입력과 관련된 로직 캡슐화
extension NicknameView {
  // 닉네임 입력 상태 관리
  private class NicknameTextFieldManager: ObservableObject {
    @Published var nickname: String = ""
    @Published var isNicknameCompleted: Bool = false
    @Published var warningMessage: NicknameWarningMessage = NicknameWarningMessage()
    @Published var textFieldStyle: NicknameTextFieldStyle = NicknameTextFieldStyle()
    @Published var submitButtonState: SubmitButtonState = SubmitButtonState()
    
    private let validator = NicknameValidator()
    
    func validateNickname() {
      let validationResult = validator.validate(nickname: nickname)
      
      updateWarningMessage(for: validationResult)
      updateTextFieldStyle(for: validationResult)
      updateSubmitButtonState(for: validationResult)
    }
    
    private func updateWarningMessage(for result: NicknameValidationResult) {
      switch result {
      case .valid:
        warningMessage.updateMessage(for: nil)
      case .invalid(let reason):
        warningMessage.updateMessage(for: reason)
      case .reset:
        warningMessage.updateMessage(for: nil)
      }
    }
    
    private func updateTextFieldStyle(for result: NicknameValidationResult) {
      switch result {
      case .valid, .reset:
        textFieldStyle.updateUI(isError: false)
      case .invalid:
        textFieldStyle.updateUI(isError: true)
      }
    }
    
    private func updateSubmitButtonState(for result: NicknameValidationResult) {
      switch result {
      case .valid:
        submitButtonState.updateState(isNicknameValid: true)
      case .invalid, .reset:
        submitButtonState.updateState(isNicknameValid: false)
      }
    }
  }
  
  // 닉네임 입력 필드 UI 관리
  private struct NicknameTextFieldStyle {
    var strokeColor: Color = .primary200
    
    mutating func updateUI(isError: Bool) {
      self.strokeColor = isError ? Color(red: 1.0, green: 0.376, blue: 0.376, opacity: 1.0) : Color.primary200
    }
  }
  
  // 경고 메시지 관리
  private struct NicknameWarningMessage {
    var text: String = ""
    
    mutating func updateMessage(for error: NicknameError?) {
      self.text = error?.message ?? ""
    }
  }
  
  // 완료 버튼 관리
  struct SubmitButtonState {
    var isEnabled: Bool = false
    
    mutating func updateState(isNicknameValid: Bool) {
      self.isEnabled = isNicknameValid
    }
  }
}

// ➕ 키보드 상태에 따른 패딩 값
private extension NicknameView {
  struct PaddingState {
    let firstTextPadding: CGFloat
    let secondTextPadding: CGFloat
    let imagePadding: CGFloat
    
    static let defaultState = PaddingState(firstTextPadding: 48, secondTextPadding: 24, imagePadding: 72)
    static let keyboardActive = PaddingState(firstTextPadding: 20, secondTextPadding: 16, imagePadding: 32)
  }
}

#Preview {
  NicknameView()
}
