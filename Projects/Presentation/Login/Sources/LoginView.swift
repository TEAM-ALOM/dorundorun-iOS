//
//  LoginView.swift
//  dorundorun
//
//  Created by 박근경 on 1/20/25.
//

import SwiftUI
import DesignSystem

struct LoginView: View {
  private struct LoginButtonConstants {
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
      .font(.custom("Jalnan2", size: 20))

      Text("혼자 또는 같이 즐기는 비대면 러닝크루, 두런두런입니다.")
        .jalnan(.regular, size: 26)
        .foregroundStyle(Color.primary200)
        .padding(.top, 8)
          .suit(.medium, size: 15)
          .foregroundStyle(Color.nutral600)
      
      Spacer()
      
      createLoginButton(
        title: "카카오로 시작하기",
        color: Color(red: 0.996, green: 0.898, blue: 0.0, opacity: 1.0),
        textColor: Color.black,
        icon: DesignSystemAsset.Icons.kakao20.name
      ) {
          // store로 action 전달 필요
        }
      
      createLoginButton(
        title: "Apple로 시작하기",
        color: Color.black,
        textColor: Color.white,
        icon: DesignSystemAsset.Icons.apple20.name
      ) {
          // store로 action 전달 필요
        }
    }
  }
  
  private func createLoginButton(
      title: String,
      color: Color,
      textColor: Color,
      icon: String,
      action: @escaping () -> Void
  ) -> some View {
    Button {
      action()
    } label: {
      ZStack {
        RoundedRectangle(cornerRadius: LoginButtonConstants.cornerRadius)
          .fill(color)
          .frame(width: .infinity, height: LoginButtonConstants.height)
          .padding(.horizontal, 16)
          
        HStack {
          Image(icon)
        
          Text(title)
            .suit(.medium, size: 15)
            .foregroundStyle(textColor)
        }
      }
    }
  }
}

#Preview {
  LoginView()
}
