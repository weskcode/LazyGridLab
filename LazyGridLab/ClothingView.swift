//
//  ClothingView.swift
//  LazyGridLab
//
//  Created by Wesley Keetch on 1/31/25.
//

import SwiftUI

struct ClothingView: View {
  let clothing: Clothing

  var body: some View {
    VStack {
      ZStack {
        Rectangle()
          .fill(clothing.randomColor)
          .frame(width: 100, height: 100)
          .cornerRadius(10)

        Image(systemName: clothing.symbol)
          .resizable()
          .scaledToFit()
          .frame(width: 40, height: 40)
          .foregroundColor(.white)
      }

      Text(clothing.name)
        .font(.caption)
        .multilineTextAlignment(.center)

      Text("$\(clothing.price, specifier: "%.2f")")
        .font(.footnote)
        .foregroundColor(.gray)
    }
    .frame(width: 120)
    .padding(.horizontal, 5)
  }
}
