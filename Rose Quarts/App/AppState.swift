//
//  AppState.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import Foundation
import SwiftData

@MainActor
public class AppState: ObservableObject {
    public var swiftDataDiaryRepository: SwiftDataDiaryRepository
    
    init(modelContext: ModelContext) {
        self.swiftDataDiaryRepository = SwiftDataDiaryRepository(modelContext: modelContext)
    }
}
