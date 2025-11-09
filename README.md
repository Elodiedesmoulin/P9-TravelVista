# ✈️ Travel Vista – UIKit to SwiftUI Migration (Project P9)

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Architecture](#architecture)
- [Agile & Git Workflow](#agile--git-workflow)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)

---

### Introduction

**Travel Vista** is an existing iOS application for a travel company.  
The project goal was to progressively migrate views from **UIKit** to **SwiftUI**, without impacting the user experience.  
This migration was handled incrementally through an **agile workflow**, with code quality ensured via branching strategies and code reviews.

---

### Features

- Migration of key screens from UIKit to SwiftUI
- UIKit and SwiftUI components coexist seamlessly
- Full visual and behavioral consistency maintained
- Codebase cleaned and modularized during migration
- SwiftUI integration done without breaking existing flows

---

### Architecture

This app is hybrid: it leverages **UIKit as legacy** and integrates **SwiftUI** using `UIHostingController`.

- **UIKit** is still used for certain base navigation components
- **SwiftUI Views** progressively replace UIKit view controllers
- ViewModels follow MVVM principles when refactoring
- Transitions between UIKit and SwiftUI are managed smoothly

---

### Agile & Git Workflow

This project followed an **agile approach**, using a sprint board and the following Git practices:

- **One ticket = One branch = One merge request**
- Regular **commits** per branch to track progress
- **Pull requests** submitted for review before merging
- **Mentor invited** to GitHub repo for code review collaboration

---

## Getting Started

### Prerequisites

- Xcode 15 or later
- iOS 17 or later

---

### Installation

1. Clone the repository:
```bash
git clone https://github.com/your-username/TravelVista-Migration.git
