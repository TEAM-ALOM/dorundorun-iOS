//
//  TabbarView.swift
//  dorundorun
//
//  Created by 박서현 on 1/24/25.
//

import SwiftUI

enum Tab{
  case home
  case doodleRun
  case market
  case myPage
}

struct TabbarView: View {
  
  @State var seletedTab: Tab = .home
  
  var body: some View {
    VStack(spacing : 0){
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
        .frame(height: 99)
        .background(Color.white)
    }
    .edgesIgnoringSafeArea(.bottom)
  }
}

struct CustomTabView: View {
  @Binding var selectedTab : Tab
  
  
  var body: some View{
    VStack(spacing : 0){
      
      Rectangle()
        .frame(height: 3)
        .foregroundStyle(Color("nutral100"))
      
      Spacer()
      ZStack{
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
        .frame(width: 313, height: 51)
        .padding(.vertical, 15)
      }
    }
    .edgesIgnoringSafeArea(.bottom)
  }
}

                                              
struct ButtonView : View {
  let imageName : String
  let title: String
  let isSelected: Bool
              
  var body: some View{
    VStack{
      Image(imageName)
        .renderingMode(.template)
        .foregroundStyle(isSelected ? Color.primary200 : Color.neutral500)
        .padding(.vertical, 7)
      Text(title)
        .font(.custom("SUIT", size: 10))
        .foregroundStyle(isSelected ? Color.primary200 : Color.neutral600)
    }
    .offset(y: -15)
  }
}

#Preview {
  TabbarView()
}

