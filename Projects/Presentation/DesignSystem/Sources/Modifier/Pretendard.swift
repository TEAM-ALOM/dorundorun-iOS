//
//  Pretendard.swift
//  DesignSystem
//
//  Created by eunseou on 1/26/25.
//

import SwiftUI

public extension View {
  func pretendard(_ weight: Fonts.Pretendard, size: CGFloat) -> some View {
    self.font(weight.font(size: size))
  }
}
