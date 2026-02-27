//
//  EntryDetailView.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import SwiftUI

struct EntryDetailView: View {
    
    var entry: Entry
    
    var body: some View {
        VStack {
            switch entry.contentBlock {
            case .text(let text):
                Text(text.content)
                
            }
        }
    }
}
