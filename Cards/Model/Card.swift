//
//  Card.swift
//  Cards
//
//  Created by Douglas Jasper on 2025-02-04.
//

import SwiftUI

struct Card: Identifiable {
  let id = UUID()
  var backgroundColor: Color = .yellow
  var elements: [CardElement] = []
}
