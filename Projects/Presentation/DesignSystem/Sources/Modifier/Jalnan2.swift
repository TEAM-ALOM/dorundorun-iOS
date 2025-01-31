//
//  Jalnan2.swift
//  DesignSystem
//
//  Created by eunseou on 1/26/25.
//

import SwiftUI

public extension View {
  func jalnan(_ weight: Fonts.Jalnan, size: CGFloat) -> some View {
    self.font(weight.font(size: size))
  }
}
