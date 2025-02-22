//
//  RunningProgressView.swift
//  DesignSystem
//
//  Created by 박서현 on 2/13/25.
//

import SwiftUI

struct RunningProgressView: View {
  
  @StateObject private var viewModel = RunningViewModel()
    var body: some View {
      HStack {
        Text("\(Int(viewModel.goalDistance))km 러닝")
          .font(DesignSystemFontFamily.Jalnan2.regular.swiftUIFont(size: 13))
          .foregroundStyle(Color.primary200)
          .padding(.trailing, 16)
        
        HStack {
          ForEach(0..<5, id: \.self) { index in
              Circle()
                  .frame(width: 17, height: 17)
                  .foregroundStyle(circleColor(for: index))
                  .overlay(
                    Circle()
                      .strokeBorder(Color.primary200, lineWidth: 2)
                  )
          }
        }
      }
    }
  
  func circleColor(for index: Int) -> Color {
    let step = viewModel.goalDistance / 5
    //한 원이 차지하는 거리
    return viewModel.currentDistance >= Double(index + 1) * step ? Color.primary200 : Color.nutralWhite
    }
}

#Preview {
    RunningProgressView()
}
