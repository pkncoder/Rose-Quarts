//
//  SwiftDataDiaryRepository.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import Foundation
import SwiftData

@MainActor
public final class SwiftDataDiaryRepository: DiaryRepositoryProtocol {
    
    private let modelContext: ModelContext
    
    init(modelContext: ModelContext) {
        self.modelContext = modelContext
    }
    
    public func fetchAll() async throws -> [DiaryEntry] {
        
        let descriptor = FetchDescriptor<SwiftDataDiaryEntry>(
                sortBy: [SortDescriptor(\.createdAt, order: .reverse)]
            )

        let results = try modelContext.fetch(descriptor)
        print("Results \(results)")
        
        return try results.map { entry in
            let jsonDecoder = JSONDecoder()
            jsonDecoder.dateDecodingStrategy = .iso8601

            return try jsonDecoder.decode(DiaryEntry.self, from: entry.data)
        }
    }
    
    // TODO: Check that this actually works
    public func fetch(id: UUID) async throws -> DiaryEntry? {
        
        let descriptor = FetchDescriptor<SwiftDataDiaryEntry>(
            predicate: #Predicate { $0.id == id }
        )

        guard let entry = try modelContext.fetch(descriptor).first else { return nil }
        
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601

        return try jsonDecoder.decode(DiaryEntry.self, from: entry.data)

    }
    
    public func save(_ entry: DiaryEntry) async throws {
        
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        
        let jsonData = try encoder.encode(entry)

        let descriptor = FetchDescriptor<SwiftDataDiaryEntry>(
            predicate: #Predicate { $0.id == entry.id }
        )

        if let existing = try modelContext.fetch(descriptor).first {
            existing.data = jsonData
            print("Existing" + existing.data.description)
        } else {
            let newObject = SwiftDataDiaryEntry(
                id: entry.id,
                createdAt: entry.createdAt,
                data: jsonData
            )
            modelContext.insert(newObject)
            
            print("Inserted")
        }

        try modelContext.save()
    }
    
    public func delete(id: UUID) async throws {
        
        let descriptor = FetchDescriptor<SwiftDataDiaryEntry>(
            predicate: #Predicate { $0.id == id }
        )

        guard let object = try modelContext.fetch(descriptor).first else { return }

        modelContext.delete(object)
        try modelContext.save()
        
        print("Deleted")
        
    }
        
}
