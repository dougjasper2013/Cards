//
//  CardsApp.swift
//  Cards
//
//  Created by Douglas Jasper on 2025-02-03.
//

import SwiftUI

@main
struct CardsApp: App {
    @StateObject var store = CardStore(defaultData: true)
    
    var body: some Scene {
        WindowGroup {
            CardsListView()
            .environmentObject(store)
        }
    }
}
