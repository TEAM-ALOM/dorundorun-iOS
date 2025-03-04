//
//  BackButton.swift
//  DesignSystem
//
//  Created by 박근경 on 3/3/25.
//

import SwiftUI

public struct BackButton: View {
  public init() {}
  
  public var body: some View {
    HStack {
      Image(asset: DesignSystemAsset.Icons.black20)
        .frame(width: 20, height: 20)
        .padding(.leading, 16)
        .padding(.top, 63)
      Spacer()
    }
    .ignoresSafeArea()
  }
}

#Preview {
  BackButton()
}
