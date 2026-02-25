//
//  Item.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/18/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
