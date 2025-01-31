//
//  Fonts.swift
//  DesignSystem
//
//  Created by eunseou on 1/26/25.
//

import SwiftUI

public enum Fonts {
  public enum Pretendard {
    case black
    case bold
    case extraBold
    case extraLight
    case light
    case medium
    case regular
    case semiBold
    case thin
    
    func font(size: CGFloat) -> SwiftUI.Font {
      switch self {
      case .black:
        return DesignSystemFontFamily.Pretendard.black.swiftUIFont(size: size)
      case .bold:
        return DesignSystemFontFamily.Pretendard.bold.swiftUIFont(size: size)
      case .extraBold:
        return DesignSystemFontFamily.Pretendard.extraBold.swiftUIFont(size: size)
      case .extraLight:
        return DesignSystemFontFamily.Pretendard.extraLight.swiftUIFont(size: size)
      case .light:
        return DesignSystemFontFamily.Pretendard.light.swiftUIFont(size: size)
      case .medium:
        return DesignSystemFontFamily.Pretendard.medium.swiftUIFont(size: size)
      case .regular:
        return DesignSystemFontFamily.Pretendard.regular.swiftUIFont(size: size)
      case .semiBold:
        return DesignSystemFontFamily.Pretendard.semiBold.swiftUIFont(size: size)
      case .thin:
        return DesignSystemFontFamily.Pretendard.thin.swiftUIFont(size: size)
      }
    }
  }
  
  public enum Suit {
    case bold
    case extraBold
    case extraLight
    case heavy
    case light
    case medium
    case regular
    case semiBold
    case thin
    
    func font(size: CGFloat) -> SwiftUI.Font {
      switch self {
      case .bold:
        return DesignSystemFontFamily.Suit.bold.swiftUIFont(size: size)
      case .extraBold:
        return DesignSystemFontFamily.Suit.extraBold.swiftUIFont(size: size)
      case .extraLight:
        return DesignSystemFontFamily.Suit.extraLight.swiftUIFont(size: size)
      case .heavy:
        return DesignSystemFontFamily.Suit.heavy.swiftUIFont(size: size)
      case .light:
        return DesignSystemFontFamily.Suit.light.swiftUIFont(size: size)
      case .medium:
        return DesignSystemFontFamily.Suit.medium.swiftUIFont(size: size)
      case .regular:
        return DesignSystemFontFamily.Suit.regular.swiftUIFont(size: size)
      case .semiBold:
        return DesignSystemFontFamily.Suit.semiBold.swiftUIFont(size: size)
      case .thin:
        return DesignSystemFontFamily.Suit.thin.swiftUIFont(size: size)
      }
    }
  }
  
  public enum Jalnan {
    case regular
    
    func font(size: CGFloat) -> SwiftUI.Font {
      DesignSystemFontFamily.Jalnan2.regular.swiftUIFont(size: size)
    }
  }
}
