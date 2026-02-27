//
//  SwiftDataDiaryEntry.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import Foundation
import SwiftData

@Model
final class SwiftDataDiaryEntry {
    @Attribute(.unique) var id: UUID
    var createdAt: Date
    var data: Data

    init(
        id: UUID,
        createdAt: Date,
        data: Data
    ) {
        self.id = id
        self.createdAt = createdAt
        self.data = data
    }
}
