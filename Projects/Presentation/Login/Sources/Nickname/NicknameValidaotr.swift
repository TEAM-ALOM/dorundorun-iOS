//
//  NicknameValidaotr.swift
//  Login
//
//  Created by 박근경 on 2/27/25.
//
import SwiftUI

struct NicknameValidator {
  func validate(nickname: String)-> NicknameValidationResult {
    guard !nickname.isEmpty else {
      return .reset
    }
    
    if nickname.count > 6 {
      return .invalid(reason: .tooLong)
    } else if containsSpecialCharacter(nickname) {
      return .invalid(reason: .invalidFormat)
    }
    
    return .valid
  }
  
  private func containsSpecialCharacter(_ nickname: String) -> Bool {
    let pattern = "^[a-zA-Z0-9가-힣]+$"
    let regex = try! NSRegularExpression(pattern: pattern)
    return regex.firstMatch(in: nickname, range: NSRange(location: 0, length: nickname.utf16.count)) == nil
  }
}

enum NicknameError: String {
  case tooLong = "6자 이하로 입력해주세요."
  case invalidFormat = "영문, 숫자, 완성된 한글 조합만 가능해요."
  case duplicate = "중복되는 닉네임입니다."
  
  var message: String {
    return self.rawValue
  }
}

enum NicknameValidationResult: Equatable {
  case valid
  case invalid(reason: NicknameError?)
  case reset
  
  var errorMessage: String? {
    switch self {
    case .valid, .reset:
      return nil
    case .invalid(let reason):
      return reason?.message
    }
  }
}
