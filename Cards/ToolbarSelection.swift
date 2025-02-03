//
//  ToolbarSelection.swift
//  Cards
//
//  Created by Douglas Jasper on 2025-02-03.
//

import Foundation

enum ToolbarSelection: CaseIterable, Identifiable {
  var id: Int {
    hashValue
  }

  case photoModal, frameModal, stickerModal, textModal
}
