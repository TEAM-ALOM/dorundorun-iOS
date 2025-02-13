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
            icon: DesignSystemAsset.Icons.home30.swiftUIImage,
            title: "홈",
            isSelected: selectedTab == .home
          )
        }

        Spacer()
        Button(action: {selectedTab = .doodleRun}){
          ButtonView(
            icon: DesignSystemAsset.Icons.run30.swiftUIImage,
            title: "두들런",
            isSelected: selectedTab == .doodleRun
          )
        }
                                              
        Spacer()
        Button(action: {selectedTab = .market}){
          ButtonView(
            icon: DesignSystemAsset.Icons.store30.swiftUIImage,
            title: "마켓",
            isSelected: selectedTab == .market
          )
        }
                                              
        Spacer()
        Button(action: {selectedTab = .myPage}){
          ButtonView(
            icon: DesignSystemAsset.Icons.mypage30.swiftUIImage,
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
    .padding(.bottom, 28)
  }
}

#Preview {
  CustomTabView(selectedTab: .constant(.home))
}
