//
//  DiaryRepositoryProtocol.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/26/26.
//

import Foundation

public protocol DiaryRepositoryProtocol {
    func fetchAll() async throws -> [DiaryEntry]
    func fetch(id: UUID) async throws -> DiaryEntry?
    func save(_ entry: DiaryEntry) async throws
    func delete(id: UUID) async throws
}
