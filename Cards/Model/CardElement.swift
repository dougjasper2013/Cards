//
//  CardElement.swift
//  Cards
//
//  Created by Douglas Jasper on 2025-02-04.
//

import SwiftUI

protocol CardElement {
  var id: UUID { get }
  var transform: Transform { get set }
}

extension CardElement {
  func index(in array: [CardElement]) -> Int? {
    array.firstIndex { $0.id == id }
  }
}

struct ImageElement: CardElement {
  let id = UUID()
  var transform = Transform()
  var image: Image
}

struct TextElement: CardElement {
  let id = UUID()
  var transform = Transform()
  var text = ""
  var textColor = Color.black
  var textFont = "Gill Sans"
}
