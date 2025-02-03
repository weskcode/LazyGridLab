//
//  ContentView.swift
//  LazyGridLab
//
//  Created by Wesley Keetch on 1/31/25.
//

import SwiftUI

struct ShoppingPageView: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 30) {
        HatsSection()
        ShirtsSection()
        PantsSection()
      }
      .padding(.vertical)
    }
  }
}

struct ContentView: View {
  var body: some View {
    ShoppingPageView()
  }
}

#Preview {
  ContentView()
}
