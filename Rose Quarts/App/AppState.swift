//
//  AppState.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import Foundation

public class AppState: ObservableObject {
    @Published var entries: [Entry] = []
}
