//
//  marketView.swift
//  dorundorun
//
//  Created by 박서현 on 1/24/25.
//

import SwiftUI

struct marketView: View {
  var body: some View {
    VStack {
      TopBarView()
      
      Text("마켓 화면")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
  }
}

#Preview {
    marketView()
}
