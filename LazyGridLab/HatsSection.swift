//
//  HatsSection.swift
//  LazyGridLab
//
//  Created by Wesley Keetch on 1/31/25.
//

import SwiftUI

struct HatsSection: View {
  var body: some View {
    VStack(alignment: .leading) {
      Text("Hats")
        .font(.title2)
        .bold()
        .padding(.horizontal)
      
      ScrollView(.horizontal) {
        LazyHStack(spacing: 15) {
          ForEach(hats, id: \.name) { hat in
            ClothingView(clothing: hat)
          }
        }
        .scrollTargetLayout()
        .padding(.horizontal)
      }
      .scrollTargetBehavior(.viewAligned)
    }
  }
}
