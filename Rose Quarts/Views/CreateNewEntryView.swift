//
//  CreateNewEntryView.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import SwiftUI

struct CreateNewEntryView: View {
    
    @State private var createNewEntryViewModel = CreateNewEntryViewModel()
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack {
            
            Form {
                TextField("Entry Title", text: $createNewEntryViewModel.entryTitle)
                TextField("Entry Description", text: $createNewEntryViewModel.entryDescription)
                
                Button {
                    appState.entries.append(Entry(contentBlock: EntryContentBlock.text(TextBlock(title: createNewEntryViewModel.entryTitle, content: createNewEntryViewModel.entryDescription))))
                } label: {
                    Text("Create")
                }
            }
            
        }
    }
    
}
