//
//  EntryFeedView.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import SwiftUI

struct DiaryEntryFeedView: View {
    
    @EnvironmentObject var appState: AppState
    
    @StateObject private var diaryEntryFeedViewModel: DiaryEntryFeedViewModel = DiaryEntryFeedViewModel()
    
    var body: some View {
        List {
            ForEach(diaryEntryFeedViewModel.entries) { entry in
                NavigationLink {
                    DiaryEntryDetailView(entry: entry)
                } label: {
                    switch entry.contentBlock {
                    case .text(let text):
                        Text(text.title)
                    }
                }
            }
            
            Button("Load Entries") {
                Task {
                    await diaryEntryFeedViewModel.loadEntries(
                        swiftDataDiaryRepository: appState.swiftDataDiaryRepository
                    )
                }
            }
        }
        .task() {
            await diaryEntryFeedViewModel.loadEntries(
                swiftDataDiaryRepository: appState.swiftDataDiaryRepository
            )
        }
    }
}
