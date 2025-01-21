//
//  LoginView.swift
//  dorundorun
//
//  Created by 박근경 on 1/20/25.
//

import SwiftUI

struct LoginView: View {
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
      
      VStack {
        Button {
          // store로 action 전달 필요
        } label: {
          ZStack {
            RoundedRectangle(cornerRadius: 12)
              .fill(Color.yellow) // 색상 수정 필요
              .frame(width: 361, height: 48)
            
            HStack {
              Image("loginButtonKakao")
              
              Text("카카오로 시작하기")
                .foregroundStyle(Color.black) // 색상 수정 필요
            }
          }
        }
        
        Button {
          // store로 action 전달 필요
        } label: {
          ZStack {
            RoundedRectangle(cornerRadius: 12)
              .fill(Color.black) // 색상 수정 필요
              .frame(width: 361, height: 48)
            
            HStack {
              Image("loginButtonApple")
          
              Text("Apple로 시작하기")
                .foregroundStyle(Color.white) // 색상 수정 필요
            }
          }
        }
      }
    }
  }
}

#Preview {
  LoginView()
}
