//
//  CreateNewEntryView.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import SwiftUI

struct CreateNewDiaryEntryView: View {
    
    @EnvironmentObject var appState: AppState
    @State private var createNewEntryViewModel = CreateNewDiaryEntryViewModel()
    
    var body: some View {
        VStack {
            
            Form {
                TextField("Entry Title", text: $createNewEntryViewModel.entryTitle)
                TextField("Entry Description", text: $createNewEntryViewModel.entryDescription)
                
                Button {
                    Task {
                        await createNewEntryViewModel.createNewEntry(swiftDataDiaryRepository: appState.swiftDataDiaryRepository)
                        print("Done View")
                    }
                } label: {
                    Text("Create")
                }
            }
            
        }
    }
    
}
