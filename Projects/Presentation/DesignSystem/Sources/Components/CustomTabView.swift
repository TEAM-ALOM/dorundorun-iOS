//
//  CustonTabView.swift
//  dorundorun
//
//  Created by 박서현 on 1/26/25.
//

import SwiftUI

struct CustomTabView: View {
  @Binding var selectedTab: Tab
  
  var body: some View {
    VStack(spacing: 0){
      Rectangle()
        .frame(height: 4)
        .foregroundStyle(Color.nutral100)
      
      Spacer()
      HStack{
        Button(action: {selectedTab = .home}){
          ButtonView(
            imageName: "home-30",
            title: "홈",
            isSelected: selectedTab == .home
          )
        }

        Spacer()
        Button(action: {selectedTab = .doodleRun}){
          ButtonView(
            imageName: "run-30",
            title: "두들런",
            isSelected: selectedTab == .doodleRun
          )
        }
                                              
        Spacer()
        Button(action: {selectedTab = .market}){
          ButtonView(
            imageName: "store-30",
            title: "마켓",
            isSelected: selectedTab == .market
          )
        }
                                              
        Spacer()
        Button(action: {selectedTab = .myPage}){
          ButtonView(
            imageName: "mypage-30",
            title: "마이",
            isSelected: selectedTab == .myPage
          )
        }
      }
      .frame(width: 300, height: 55)
      .padding(.vertical, 15)
    }
    .frame(height: 92)
    .edgesIgnoringSafeArea(.bottom)
  }
}

#Preview {
  CustomTabView(selectedTab: .constant(.home))
}
