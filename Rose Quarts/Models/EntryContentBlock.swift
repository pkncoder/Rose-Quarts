//
//  EntryContentBlock.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import Foundation

enum EntryContentBlock: Identifiable {
    case text(TextBlock)
    
    var id: UUID {
        switch self {
            case .text(let block): return block.id
        }
    }
}
