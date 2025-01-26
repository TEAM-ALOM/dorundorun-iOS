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
    VStack(spacing: 0){
      switch seletedTab {
      case .home:
        homeView()
      case .doodleRun:
        doodleRunView()
      case .market:
        marketView()
      case .myPage:
        myPageView()
      }
      CustomTabView(selectedTab: $seletedTab)
        .frame(width: 393, height: 92)
        .background(Color.neutralWhite)
    }
    .edgesIgnoringSafeArea(.bottom)
  }
}

#Preview {
  TabbarView()
}
