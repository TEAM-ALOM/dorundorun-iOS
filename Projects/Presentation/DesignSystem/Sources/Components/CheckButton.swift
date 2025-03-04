//
//  CheckButton.swift
//  DesignSystem
//
//  Created by 박근경 on 3/4/25.
//
import SwiftUI

public struct CheckButton: View {
  public init() {}
  
  public var body: some View {
    HStack {
      Spacer()
      Image(asset: DesignSystemAsset.Icons.check20)
        .frame(width: 20, height: 20)
        .padding(.trailing, 16)
        .padding(.top, 62)
    }
    .ignoresSafeArea()
  }
}

#Preview {
  CheckButton()
}
