//
//  TabbarView.swift
//  dorundorun
//
//  Created by 박서현 on 1/20/25.
//

import SwiftUI

struct TabbarView: View {
  
  init() {
    let appearance = UITabBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = UIColor.white // 탭바 배경 설정

    // 활성화된 아이템 색상
    appearance.stackedLayoutAppearance.selected.iconColor = UIColor(#colorLiteral(red: 0.4748314023, green: 0.3105015755, blue: 0.9763918519, alpha: 1))
    appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor(#colorLiteral(red: 0.4748314023, green: 0.3105015755, blue: 0.9763918519, alpha: 1))]
            
    // 비활성화된 아이템 색상
    appearance.stackedLayoutAppearance.normal.iconColor = UIColor(#colorLiteral(red: 0.7401758432, green: 0.6517201066, blue: 0.98768574, alpha: 1))
    appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor(#colorLiteral(red: 0.7401758432, green: 0.6517201066, blue: 0.98768574, alpha: 1))]

    // 탭 아이템 중앙 배치 설정
    appearance.stackedItemPositioning = .centered // 중앙 배치
    appearance.stackedItemSpacing = 4

    UITabBar.appearance().standardAppearance = appearance
  }
  
  var body: some View {
    TabView {
      VStack {
        Text("홈 화면")
          .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        Rectangle()
          .frame(height: 4)
          .foregroundStyle(Color.gray)
          .opacity(0.3)
      }
      .tabItem {
        Label("홈", systemImage: "house")
      }
      
      VStack {
        Text("두들런 화면")
          .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        Rectangle()
          .frame(height: 4)
          .foregroundStyle(Color.gray)
          .opacity(0.3)
      }
      .tabItem {
        Label("두들런", systemImage: "waveform.path.ecg")
      }
      
      VStack {
        Text("마켓 화면")
          .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        Rectangle()
          .frame(height: 4)
          .foregroundStyle(Color.gray)
          .opacity(0.3)
      }
      .tabItem {
        Label("마켓", systemImage: "cart")
      }
      
      VStack {
        Text("마이페이지 화면")
          .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        Rectangle()
          .frame(height: 4)
          .foregroundStyle(Color.gray)
          .opacity(0.3)
      }
      .tabItem {
        Label("마이페이지", systemImage: "person.crop.circle")
      }
    }
    .tint(Color(#colorLiteral(red: 0.4748314023, green: 0.3105015755, blue: 0.9763918519, alpha: 1)))
    .onAppear {
      UITabBar.appearance().unselectedItemTintColor = UIColor(#colorLiteral(red: 0.7401758432, green: 0.6517201066, blue: 0.98768574, alpha: 1))
    }
  }
}

#Preview {
  TabbarView()
}
