//
//  TextBlock.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import Foundation

public struct TextBlock: Codable {
    public var id: UUID = UUID()
    
    public var title: String
    public var content: String
}
