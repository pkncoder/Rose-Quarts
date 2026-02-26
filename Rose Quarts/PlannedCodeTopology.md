# Planned Code Topology

This is the planned code topology, built from the [Suggested Code Topology](SuggestedCodeTopology.md) from Chat-GPT.

This was created before starting any code, as of 2026-02-25.

## Planned Code Archetecture

```txt
Views (SwiftUI)
   ↓
ViewModels
   ↓
Repositories
   ↓
Services (Encryption, Storage, Keychain)
   ↓
Persistence (SwiftData + FileSystem)
```

## Planned File Structure

```txt
Rose\ Quartzs/
│
├── App/
│   ├── DiaryApp.swift
│   ├── AppState.swift
│
├── Models/
│   ├── DiaryEntry.swift
│   ├── Attachment.swift
│   ├── Tag.swift
│   ├── EntryGroup.swift
│   └── UserAccount.swift
│
├── ViewModels/
│   ├── HomeFeedViewModel.swift
│   ├── CreateEntryViewModel.swift
│   ├── EntryDetailViewModel.swift
│   └── SettingsViewModel.swift
│
├── Views/
│   ├── RootView.swift
│   ├── LockScreenView.swift
│   ├── MainTabView.swift
│   ├── HomeFeedView.swift
│   ├── CreateEntryView.swift
│   ├── EntryDetailView.swift
│   ├── TagsView.swift
│   ├── GroupsView.swift
│   └── SettingsView.swift
│
├── Services/
│   ├── EncryptionService.swift
│   ├── KeychainService.swift
│   ├── AuthenticationManager.swift
│   ├── ExportService.swift
│
├── Repositories/
│   ├── DiaryRepository.swift
│   ├── UserRepository.swift
│   └── TagRepository.swift
│
└── Persistence/
    ├── SwiftDataModels.swift
    └── StorageManager.swift
```

## Planned Roadmap

```txt
Phase 1 – Core Functionality
- Basic Entry model (viewmodel of the entry view)
- Save text entries
- View list (list of saved text entries)
- Detail screen (saved text details)

Phase 2 – Tags & Groups
- Tag filtering
- Group separation (groups of entries)

Phase 3 – Attachments
- Image picker
- Link attachments
- File import

Phase 4 – Security
- Password setup
- Keychain integration
- Encryption layer

Phase 5 – Accounts
- Profile screen
- Multi-user support (was Chat-GPT's idea, but not bad idea)

Phase 6 – Export + Resources (Post-First-Goal)
- Export feature
- Mental health resource links
- Emergency quick-access numbers
```
