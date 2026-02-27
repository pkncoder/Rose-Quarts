//
//  EntryContentBlock.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import Foundation

public enum DiaryEntryContentBlock: Identifiable, Codable {
    case text(TextBlock)
    
    public var id: UUID {
        switch self {
            case .text(let block): return block.id
        }
    }
    
    private enum CodingKeys: String, CodingKey {
        case type
        case data
    }

    private enum BlockType: String, Codable {
        case text
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        let type = try container.decode(BlockType.self, forKey: .type)

        switch type {
        case .text:
            let block = try container.decode(TextBlock.self, forKey: .data)
            self = .text(block)
        }
    }
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case .text(let block):
            try container.encode(BlockType.text, forKey: .type)
            try container.encode(block, forKey: .data)
        }
    }
}
