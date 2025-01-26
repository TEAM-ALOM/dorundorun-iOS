//
//  Suit.swift
//  DesignSystem
//
//  Created by eunseou on 1/26/25.
//

import SwiftUI

public extension View {
  func suit(_ weight: Fonts.Suit, size: CGFloat) -> some View {
    self.font(weight.font(size: size))
  }
}
