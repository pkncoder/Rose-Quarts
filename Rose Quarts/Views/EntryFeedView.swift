//
//  EntryFeedView.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import SwiftUI

struct EntryFeedView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        List {
            ForEach(appState.entries) { entry in
                NavigationLink {
                    EntryDetailView(entry: entry)
                } label: {
                    switch entry.contentBlock {
                    case .text(let text):
                        Text(text.title)
                    }
                }
            }
        }
    }
}
