//
//  Jalnan2.swift
//  DesignSystem
//
//  Created by eunseou on 1/26/25.
//

import SwiftUI

public extension View {
  func jalnan(size: CGFloat) -> some View {
    self.font(Fonts.Jalnan.font(size: size))
  }
}
