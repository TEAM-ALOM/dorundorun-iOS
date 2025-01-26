//
//  ButtonView.swift
//  dorundorun
//
//  Created by 박서현 on 1/26/25.
//

import SwiftUI

struct ButtonView: View {
  let imageName: String
  let title: String
  let isSelected: Bool
              
  var body: some View {
    VStack {
      Image(imageName)
        .renderingMode(.template)
        .foregroundStyle(isSelected ? Color.primary200 : Color.neutral500)
        .padding(.bottom, 9)
      Text(title)
        .font(.custom("SUIT", size: 10))
        .foregroundStyle(isSelected ? Color.primary200 : Color.neutral600)
        .padding(.bottom, 22)
    }
  }
}

#Preview {
  ButtonView(
    imageName: "home-30",
    title: "홈",
    isSelected: true
  )
}
