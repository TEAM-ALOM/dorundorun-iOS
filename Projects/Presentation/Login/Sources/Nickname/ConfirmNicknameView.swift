//
//  ConfirmNicknameView.swift
//  Login
//
//  Created by 박근경 on 2/24/25.
//

import SwiftUI
import DesignSystem

struct ConfirmNicknameView: View {
  var body: some View {
    Text("탱강이")
      .jalnan(.regular, size: 18)
      .foregroundStyle(Color.primary200)
    
    Text("사용가능한 닉네임이에요.\n이 닉네임으로 하시겠어요?")
      .jalnan(.regular, size: 18)
      .foregroundStyle(Color.primary200)
  }
}

#Preview {
  ConfirmNicknameView()
}
