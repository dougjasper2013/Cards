//
//  SingleCardView.swift
//  Cards
//
//  Created by Douglas Jasper on 2025-02-03.
//

import SwiftUI

struct SingleCardView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentModal: ToolbarSelection?

    var body: some View {
        NavigationStack {
            content
          .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                      dismiss()
                    }
                  }
            ToolbarItem(placement: .bottomBar) {
              BottomToolbar(modal: $currentModal)
            }
      }
          .sheet(item: $currentModal) { item in
            switch item {
            default:
              Text(String(describing: item))
            }
          }
        }
    }

}

var content: some View {
  ZStack {
      Group {
        Capsule()
          .foregroundColor(.yellow)
        Text("Resize Me!")
          .fontWeight(.bold)
          .font(.system(size: 500))
          .minimumScaleFactor(0.01)
          .lineLimit(1)
      }
      .resizableView()

    Circle()
      .resizableView()
      .offset(CGSize(width: 50, height: 200))
  }
}

#Preview {
    SingleCardView()
}
