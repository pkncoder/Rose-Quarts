//
//  DiaryEntryDetailViewModel.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/27/26.
//

import Foundation
import SwiftUI

@MainActor
public class DiaryEntryDetailViewModel: ObservableObject {
    
    @Published public var entry: DiaryEntry
    
    
    init(entry: DiaryEntry) {
        self.entry = entry
    }

    public func deleteEntry(swiftDataDiaryRepository: SwiftDataDiaryRepository) async {
        
        do {
            try await swiftDataDiaryRepository.delete(id: entry.id)
        } catch {
            print(error)
        }
    }
    
}
