//
//  ButtonView.swift
//  dorundorun
//
//  Created by 박서현 on 1/26/25.
//

import SwiftUI

struct ButtonView: View {
  let icon: Image
  let title: String
  let isSelected: Bool
              
  var body: some View {
    VStack {
      icon
        .renderingMode(.template)
        .foregroundStyle(isSelected ? Color.primary200 : Color.nutral500)
        .padding(.bottom, 9)
      Text(title)
        .font(.custom("SUIT", size: 10))
        .foregroundStyle(isSelected ? Color.primary200 : Color.nutral600)
        .padding(.bottom, 22)
    }
  }
}

#Preview {
  ButtonView(
    icon: DesignSystemAsset.Icons.home30.swiftUIImage,
    title: "홈",
    isSelected: true
  )
}
