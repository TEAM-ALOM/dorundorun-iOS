//
//  TabbarView.swift
//  dorundorun
//
//  Created by 박서현 on 1/24/25.
//

import SwiftUI

enum Tab {
  case home
  case doodleRun
  case market
  case myPage
}

struct TabbarView: View {
  
  @State var seletedTab: Tab = .home
  
  var body: some View {
    GeometryReader { geometry in
      ZStack(alignment: .bottom) {
        VStack(spacing: 0) {
          switch seletedTab {
          case .home:
            HomeView()
              .ignoresSafeArea()
          case .doodleRun:
            doodleRunView()
              .ignoresSafeArea()
          case .market:
            marketView()
              .ignoresSafeArea()
          case .myPage:
            myPageView()
              .ignoresSafeArea()
          }
        }
        .frame(width: geometry.size.width, height: geometry.size.height)
        
        CustomTabView(selectedTab: $seletedTab)
          .background(Color.nutralWhite)
      }
    }
    .ignoresSafeArea()
  }
}

#Preview {
  TabbarView()
}
