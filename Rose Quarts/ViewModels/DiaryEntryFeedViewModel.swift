//
//  DiaryEntryFeedViewModel.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import Foundation
import SwiftUI

@MainActor
public class DiaryEntryFeedViewModel: ObservableObject {
    
    @Published public var entries: [DiaryEntry] = []

    public func loadEntries(swiftDataDiaryRepository: SwiftDataDiaryRepository) async {
        do {
            entries = try await swiftDataDiaryRepository.fetchAll()
            
            print(entries)
        } catch {
            print(error)
        }
    }
    
}
