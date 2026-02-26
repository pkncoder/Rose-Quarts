//
//  CreateNewEntryViewModel.swift
//  Rose Quarts
//
//  Created by Kia Preston on 2/25/26.
//

import Foundation

@Observable
public class CreateNewEntryViewModel {
    
    public var entryTitle: String = ""
    public var entryDescription: String = ""
    
    public func onCreateButtonPress() {
        print(entryTitle)
        print(entryDescription)
    }
}
