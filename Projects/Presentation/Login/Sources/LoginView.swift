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
    VStack(spacing: 0) {
      Spacer()
        .frame(height: 329)
      
      VStack(alignment: .leading, spacing: 0) {
        RoundedRectangle(cornerRadius: 5)
          .stroke(Color.gray)
          .fill(Color.nutral200)
          .frame(width: 102, height: 102)
          .padding(.bottom, 16)
        
        Text("안녕하세요!\n두런이와 함께 뛰어요!")
          .frame(height: 70)
          .lineSpacing(8)
          .jalnan(.regular, size: 26)
          .foregroundStyle(Color.primary200)
          .padding(.bottom, 8)
        
        Text("혼자도, 함께도 즐기는 비대면 러닝크루")
          .suit(.medium, size: 15)
          .foregroundStyle(Color.nutral600)
          .padding(.bottom, 63)
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(.leading, 16)
      
      VStack(spacing: 8) {
        createLoginButton(
          title: "카카오로 시작하기",
          color: Color(red: 0.996, green: 0.898, blue: 0.0, opacity: 1.0),
          textColor: Color.black,
          icon: DesignSystemAsset.Icons.kakao20
        ) {
          // store로 action 전달 필요
        }
        
        createLoginButton(
          title: "Apple로 시작하기",
          color: Color.black,
          textColor: Color.white,
          icon: DesignSystemAsset.Icons.apple20
        ) {
          // store로 action 전달 필요
        }
      }
    }
  }
  
  private func createLoginButton(
      title: String,
      color: Color,
      textColor: Color,
      icon: DesignSystemImages,
      action: @escaping () -> Void
  ) -> some View {
    Button {
      action()
    } label: {
      ZStack {
        RoundedRectangle(cornerRadius: LoginButtonConstants.cornerRadius)
          .fill(color)
          .frame(width: .infinity, height: LoginButtonConstants.height)
          .padding(.horizontal, 13)
          
        HStack {
          Image(asset: icon)
        
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
