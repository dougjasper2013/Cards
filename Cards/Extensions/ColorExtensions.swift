//
//  ColorExtensions.swift
//  Cards
//
//  Created by Douglas Jasper on 2025-02-04.
//

import SwiftUI

extension Color {
  static let colors: [Color] = [
    .green, .red, .blue, .gray, .yellow, .pink, .orange, .purple
  ]
    
  static func random() -> Color {
    colors.randomElement() ?? .black
  }
}

