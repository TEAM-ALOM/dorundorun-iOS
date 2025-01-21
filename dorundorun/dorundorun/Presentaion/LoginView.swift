//
//  LoginView.swift
//  dorundorun
//
//  Created by 박근경 on 1/20/25.
//

import SwiftUI

struct LoginView: View {
  private struct LoginButtonConstants {
      static let width: CGFloat = 361
      static let height: CGFloat = 48
      static let cornerRadius: CGFloat = 12
  }
  
  var body: some View {
    VStack {
      Spacer()
      
      Rectangle()
        .fill(Color.gray)
        .frame(width: 100, height: 100)
      
      Group {
        Text("안녕하세요!")
        Text("저 두런이와 함께 뛸 준비 되셨나요?")
      }

      Text("혼자 또는 같이 즐기는 비대면 러닝크루, 두런두런입니다.")
        .foregroundStyle(Color.purple)
      
      Spacer()
      
      createLoginButton(
        title: "카카오로 시작하기",
        color: Color.yellow,
        textColor: Color.black,
        iconName: "loginButtonKakao"
      ) {
          // store로 action 전달 필요
        }
      
      createLoginButton(
        title: "Apple로 시작하기",
        color: Color.black,
        textColor: Color.white,
        iconName: "loginButtonApple"
      ) {
          // store로 action 전달 필요
        }
    }
  }
  
  private func createLoginButton(
      title: String,
      color: Color,
      textColor: Color,
      iconName: String,
      action: @escaping () -> Void
  ) -> some View {
    Button {
      action()
    } label: {
      ZStack {
        RoundedRectangle(cornerRadius: LoginButtonConstants.cornerRadius)
          .fill(color)
          .frame(width: LoginButtonConstants.width, height: LoginButtonConstants.height)
          
        HStack {
          Image(iconName)
        
          Text(title)
            .foregroundStyle(textColor)
        }
      }
    }
  }
}

#Preview {
  LoginView()
}
