//
//  PantsSection.swift
//  LazyGridLab
//
//  Created by Wesley Keetch on 1/31/25.
//

import SwiftUI

struct PantsSection: View {
  let columns = [
    GridItem(.adaptive(minimum: 100)) 
  ]
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("Pants")
        .font(.title2)
        .bold()
        .padding(.horizontal)
      
      ScrollView(.horizontal) {
        LazyHGrid(rows: Array(repeating: GridItem(.adaptive(minimum: 120)), count: 4), spacing: 15) {
          ForEach(pants, id: \.name) { pant in
            ClothingView(clothing: pant)
          }
        }
        .scrollTargetLayout()
        .padding(.horizontal)
      }
      .scrollTargetBehavior(.paging)
    }
  }
}
