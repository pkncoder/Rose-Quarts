//
//  RootView.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            VStack {
                EntryFeedView()
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        CreateNewEntryView()
                            .navigationTitle("Create New Entry")
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    RootView()
}
