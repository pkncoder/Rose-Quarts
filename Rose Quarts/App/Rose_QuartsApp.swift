//
//  Rose_QuartsApp.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/18/26.
//

import SwiftUI
import SwiftData

@main
struct RoseQuarts: App {
    @Environment(\.modelContext) private var modelContext

    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .modelContainer(for: SwiftDataDiaryEntry.self)
    }
}
