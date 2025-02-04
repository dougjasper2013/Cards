//
//  SingleCardView.swift
//  Cards
//
//  Created by Douglas Jasper on 2025-02-03.
//

import SwiftUI

struct SingleCardView: View {
  @State private var currentModal: ToolbarSelection?
    @Binding var card: Card


  var body: some View {
    NavigationStack {
        CardDetailView(card: $card)
        .modifier(CardToolbar(currentModal: $currentModal))    }
  }

  }


struct SingleCardView_Previews: PreviewProvider {
  static var previews: some View {
      SingleCardView(card: .constant(initialCards[0]))


  }
}
