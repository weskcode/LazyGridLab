//
//  ShirtsSection.swift
//  LazyGridLab
//
//  Created by Wesley Keetch on 1/31/25.
//

import SwiftUI

struct ShirtsSection: View {
  let columns = [
    GridItem(.fixed(150)),
    GridItem(.fixed(150))
  ]

  var body: some View {
    VStack(alignment: .leading) {
      Text("Shirts")
        .font(.title2)
        .bold()
        .padding(.horizontal)

      ScrollView(.horizontal) {
        LazyHGrid(rows: columns, spacing: 15) {
          ForEach(shirts, id: \.name) { shirt in
            ClothingView(clothing: shirt)
          }
        }
        .scrollTargetLayout()
        .padding(.horizontal)
      }
    }
  }
}
