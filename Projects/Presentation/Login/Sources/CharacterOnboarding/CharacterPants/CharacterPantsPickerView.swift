//
//  CharacterPantsPickerView.swift
//  Login
//
//  Created by 박근경 on 3/4/25.
//

import SwiftUI
import DesignSystem

struct CharacterPantsPickerView: View {
  @State private var selectedIndex: Int?
  let columns: [GridItem] = [
    GridItem(.flexible(), spacing: 18),
    GridItem(.flexible(), spacing: 18),
    GridItem(.flexible(), spacing: 0)
  ]
  
  var body: some View {
    VStack(spacing: 0) {
      HStack {
        Button {
          // store로 action 전달 필요
        } label: {
          BackButton()
        }
        
        Button {
          // store로 action 전달 필요
        } label: {
          CheckButton()
        }
      }
      .padding(.bottom, 13)
      
      Spacer()
      
      VStack(spacing: 0) {
        Text("탱강이")
          .jalnan(.regular, size: 18)
          .foregroundStyle(Color.primary200)
          .padding(.bottom, 31)
        
        Image(asset: DesignSystemAsset.Icons.onboardingCharacter217)
          .scaledToFit()
          .frame(width: 211, height: 213)
      }
      
      Spacer()
      
      makeClothPicker(selectedIndex: $selectedIndex)
    }
    .ignoresSafeArea()
  }
}

extension CharacterPantsPickerView {
  private func makeClothPicker(selectedIndex: Binding<Int?>) -> some View {
    ZStack {
      Rectangle()
        .fill(Color.white)
        .frame(width: .infinity, height: 406)
        .clipShape(
          .rect(
            topLeadingRadius: 30,
            bottomLeadingRadius: 0,
            bottomTrailingRadius: 0,
            topTrailingRadius: 30
          )
        )
        .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.12), radius: 10, y: -4)
      
      VStack(spacing: 0) {
        Text("바지 색상을 선택해주세요.")
          .suit(.regular, size: 15)
          .foregroundStyle(Color.nutral600)
          .padding(.bottom, 24)
          
        Rectangle()
          .fill(Color.nutral200)
          .frame(height: 4)
          .padding(.bottom, 24)
    
        LazyVGrid(columns: [
          GridItem(.flexible(), spacing: 18),
          GridItem(.flexible(), spacing: 18),
          GridItem(.flexible(), spacing: 0)
        ], spacing: 8) {
          ForEach(0..<9, id: \.self) { index in
            ClothSelectionButton(index: index, selectedIndex: selectedIndex)
          }
        }
        .padding(.horizontal, 20)
      }
    }
  }
  
  private struct ClothSelectionButton: View {
    let index: Int
    @Binding var selectedIndex: Int?
    
    var body: some View {
      Button {
        selectedIndex = index
      } label: {
        Image(asset: DesignSystemAsset.Icons.clothOnboardingOff88)
          .frame(width: 88, height: 88)
          .shadow(color: selectedIndex == index ? Color.black.opacity(0.15) : Color.clear, radius: 7, x: 0, y: 0)
      }
      .disabled(selectedIndex == index)
    }
  }
}
#Preview {
  CharacterPantsPickerView()
}
