# Code Topology

This is how each view/file moves to each other.

This was started once I started the programming, and is updated for the newest/actual

## Topology

- RoseQuartsApp.swift

  - RootView.swift

    - DiaryEntryFeedView

      - AppState*
      - DiaryEntryFeedViewModel

        - DiaryEntry**
        - SwiftDataDiaryRepository*

      - DiaryEntryDetailView

        - AppState*
        - DiaryEntryDetailViewModel

          - DiaryEntry**
          - SwiftDataDiaryRepository*

    - CreateNewDiaryEntryView

      - AppState*
      - CreateNewDiaryEntryViewModel

        - SwiftDataDiaryRepository*

### Enviorment Variables (*)

- AppState

  - SwiftDataDiaryRepository

    - DiaryRepositoryProtocol

      - DiaryEntry**

    - DiaryEntry**
    - SwiftDataDiaryEntry

### Frequently Used Models (**)

- DiaryEntry
  - DiaryEntryContentBlock
    - TextBlock
      - BlockType
