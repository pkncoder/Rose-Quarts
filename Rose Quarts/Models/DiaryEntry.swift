//
//  Entry.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import Foundation

public struct DiaryEntry: Identifiable, Codable {
    public var id: UUID
    
    var createdAt: Date
    
    public var contentBlock: DiaryEntryContentBlock
    
    init(contentBlock: DiaryEntryContentBlock) {
        self.id = UUID()
        
        self.createdAt = Date()
        self.contentBlock = contentBlock
    }
}
