//
//  CreateNewEntryView.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import SwiftUI

struct CreateNewEntryView: View {
    
    @State private var createNewEntryViewModel = CreateNewEntryViewModel()
    
    var body: some View {
        VStack {
            
            TextField("Entry Title", text: $createNewEntryViewModel.entryTitle)
            TextField("Entry Description", text: $createNewEntryViewModel.entryDescription)
            
            Button {
                createNewEntryViewModel.onCreateButtonPress()
            } label: {
                Text("Create a new view")
            }
        }
    }
    
}
