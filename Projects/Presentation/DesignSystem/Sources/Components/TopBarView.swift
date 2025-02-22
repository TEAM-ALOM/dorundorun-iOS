//
//  TopBarView.swift
//  DesignSystem
//
//  Created by 박서현 on 2/7/25.
//

import SwiftUI

struct TopBarView: View {
  
  @State private var userCoin: String = "380"
  
    var body: some View {
      HStack {
        Text("두런두런")
          .jalnan(.regular, size: 26)
          .foregroundStyle(Color.primary200)
          .padding(.leading, 15)
        
        Spacer()
        
        HStack() {
          Rectangle()
            .frame(width: 20, height: 20)
            .foregroundStyle(Color.nutral100)
          // 코인 이미지 넣을 부분
          
          Group {
            Text(userCoin)
            Text("+")
          }
          .jalnan(.regular, size: 15)
          .foregroundStyle(Color.primary200)
        }
        .padding(.trailing, 15)
      }
      .padding(.bottom, 11)
      .padding(.top, 63)
      
    Rectangle()
    .frame(height: 4)
    .foregroundStyle(Color.nutral100)
  }
}

#Preview {
    TopBarView()
}
