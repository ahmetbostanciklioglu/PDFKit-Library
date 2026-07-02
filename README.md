<div align="center">

# 📄 PDFKit Library

**Display PDF documents in SwiftUI by bridging Apple's PDFKit through a lightweight `UIViewRepresentable`.**

![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey?style=flat-square)
![Swift](https://img.shields.io/badge/Swift-5.0-orange?style=flat-square&logo=swift)
![SwiftUI](https://img.shields.io/badge/SwiftUI-blue?style=flat-square&logo=swift)
![Xcode](https://img.shields.io/badge/Xcode-16-147EFB?style=flat-square&logo=xcode)
![PDFKit](https://img.shields.io/badge/PDFKit-native-6E48AA?style=flat-square)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/PDFKit-Library?style=flat-square&color=6E48AA)
![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/PDFKit-Library?style=flat-square&color=4776E6)

</div>

## 📖 Overview

PDFKit Library is a compact SwiftUI example showing how to render PDF documents natively on iOS. Because SwiftUI has no built-in PDF viewer, the project wraps UIKit's `PDFView` in a `UIViewRepresentable` so it can be dropped straight into a SwiftUI view hierarchy. A document is loaded from raw `Data` and displayed with automatic scaling, user interaction, and page-break margins.

## ✨ Features

- **SwiftUI PDF rendering** — displays a `PDFDocument` inside SwiftUI with no third-party dependencies.
- **UIKit bridge** — `PDFKitView` wraps `PDFView` via `UIViewRepresentable` and keeps it in sync through a `@Binding`.
- **Data-driven loading** — `PDFLibraryView` accepts raw PDF `Data` and a file name, building the document at init.
- **Auto-scaling & interaction** — the underlying `PDFView` enables `autoScales`, user interaction, and page-break margins.
- **Bundled sample** — ships with a `sample.pdf` used by the SwiftUI `#Preview`.

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/PDFKit-Library.git
cd PDFKit-Library
open "PDFKit Library.xcodeproj"
```

Open the project in Xcode and press **⌘R** to build and run on the iOS Simulator or a device.

## 🛠️ Usage

Pass the PDF bytes and a file name to `PDFLibraryView`:

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        if let url = Bundle.main.url(forResource: "sample", withExtension: "pdf"),
           let data = try? Data(contentsOf: url) {
            PDFLibraryView(pdfData: data, pdfFileName: "PDFKit Example")
        }
    }
}
```

To use the UIKit bridge directly in your own view, bind a `PDFDocument`:

```swift
@State private var document = PDFDocument(data: pdfData)!

PDFKitView(document: $document)
```

## 📋 Requirements

- iOS 18.5 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
