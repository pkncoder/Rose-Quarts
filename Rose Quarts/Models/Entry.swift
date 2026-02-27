//
//  Entry.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import Foundation

struct Entry: Identifiable {
    var id: UUID = UUID()
    
    var contentBlock: EntryContentBlock
}
