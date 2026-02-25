# Suggested Code Topology

This is the planned topology of the code

As of: 2026-02-24

## Suggested Architecture

```txt
Views (SwiftUI)
   ↓
ViewModels
   ↓
Repositories
   ↓
Services (Encryption, Storage, Keychain)
   ↓
Persistence (SwiftData or CoreData + FileSystem)
```

## Suggested File structure

```txt
DiaryApp/
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

## Suggested Roadmap

```txt
Phase 1 – Core Functionality
- Basic Entry model
- Save text entries
- View list
- Detail screen

Phase 2 – Tags & Groups
- Tag filtering
- Group separation
- Phase 3 – Attachments
- Image picker
- Link attachments
- File import

Phase 4 – Security
- Password setup
- Keychain integration
- Encryption layer

Phase 5 – Accounts
- Profile screen
- Multi-user support (optional)

Phase 6 – Export + Resources
- Export feature
- Mental health resource links
- Emergency quick-access numbers
```

## Chat-GPT Prompt

```txt
I would like you to create a roadmap, outlining the program topology (how structures, classes, and views will connect with eachother) of my new project with the given information. I am working on a new project with Swift and SwiftUI, for IOS. I am programming on a Macbook with XCode, and the IOS 18.2 simulator. The application is centered around creating a digital diary, serving for mental health by being able to look back at the better parts of things that have happened. Here is some extra informationion, that will store the final mission, goals, and any extra TODOs during development. Please take into account how I can work in new features that may or may not be on this list:

# Todo

Outlining the final goals, and saving any todos not specified in code.

## Why should this exist

Having a platform to note anythign that can help you in a bad time, giving you
resourses to look back on, reminding you of the good that exists.

Having a platform where you are confortable to use, and express yourself in a closed location

## Top Goals (Checklist)

- [ ] Saving of things
  - [ ] Text
  - [ ] Images
  - [ ] Links
  - [ ] Files
- [ ] Viewing based on user-made tags as a filtering system
- [ ] Seperating different saved information into groups
- [ ] Encrypted Data
- [ ] Password Proteded
  - [ ] Keychain
- [ ] User "Accounts"
  - [ ] Name
  - [ ] Pronouns
  - [ ] Extra Sexuality stuff? *optional*

## Extra Wanted Goals

- [ ] A way to export information to share with others "when ready"
- [ ] Extra links / numbers to other resourses
```
