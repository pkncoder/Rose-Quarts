//
//  EntryDetailView.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import SwiftUI

struct DiaryEntryDetailView: View {
    
    @EnvironmentObject var appState: AppState
    @Environment(\.dismiss) private var dismiss
    var diaryEntryDetailViewModel: DiaryEntryDetailViewModel
    
    init(entry: DiaryEntry) {
        self.diaryEntryDetailViewModel = DiaryEntryDetailViewModel(entry: entry)
    }
    
    var body: some View {
        VStack {
            switch diaryEntryDetailViewModel.entry.contentBlock {
            case .text(let text):
                Text(text.content)
                
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    Task {
                        await diaryEntryDetailViewModel.deleteEntry(swiftDataDiaryRepository: appState.swiftDataDiaryRepository)
                        
                        dismiss()
                    }
                } label: {
                    Image(systemName: "trash")
                }
                
            }
            
        }
    }
}
