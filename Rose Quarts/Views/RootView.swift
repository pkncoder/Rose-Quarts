//
//  RootView.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import SwiftUI
import SwiftData

struct RootView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationStack {
            VStack {
                DiaryEntryFeedView()
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        CreateNewDiaryEntryView()
                            .navigationTitle("Create New Entry")
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
                
            }
        }
        .environmentObject(
            AppState(modelContext: modelContext)
        )
    }
}
