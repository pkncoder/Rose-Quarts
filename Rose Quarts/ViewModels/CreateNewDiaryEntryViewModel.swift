//
//  CreateNewEntryViewModel.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import Foundation
import SwiftUI

@Observable
public class CreateNewDiaryEntryViewModel {
    
    public var entryTitle: String = ""
    public var entryDescription: String = ""
    
    public func createNewEntry(swiftDataDiaryRepository: SwiftDataDiaryRepository) async {
        
        do {
            let diaryEntry = DiaryEntry(
                contentBlock: DiaryEntryContentBlock.text(
                    TextBlock(title: self.entryTitle, content: self.entryDescription)
                )
            )
            
            try await swiftDataDiaryRepository.save(diaryEntry)
            
            print("Done Model")
        } catch {
            print(error)
        }
    }
}
