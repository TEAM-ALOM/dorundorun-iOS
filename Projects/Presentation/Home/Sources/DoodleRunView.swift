//
//  doodleRunView.swift
//  dorundorun
//
//  Created by 박서현 on 1/24/25.
//

import SwiftUI

struct doodleRunView: View {
  var body: some View {
    VStack {
      TopBarView()
      
      Text("두들런 화면")
       .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
  }
}

#Preview {
    doodleRunView()
}
