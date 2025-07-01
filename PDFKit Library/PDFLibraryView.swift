//
//  PDFKit_Library.swift
//  PDFKit Library
//
//  Created by Ahmet Bostanci on 1.07.2025.
//

import PDFKit
import SwiftUI

struct PDFLibraryView: View {
    @State private var document: PDFDocument
    let pdfData: Data
    let pdfFileName: String
    init(pdfData: Data, pdfFileName: String) {
        self.pdfData = pdfData
        self.pdfFileName = pdfFileName
        _document = State(initialValue: PDFDocument(data: pdfData)!)
    }
    var body: some View {
        PDFKitView(document: $document)
    }
}

#Preview {
    guard let url = Bundle.main.url(forResource: "sample", withExtension: "pdf") else { fatalError("sample.pdf not found in bundle.") }
    guard let pdfData = try? Data(contentsOf: url) else { fatalError("Could not load data from sample.pdf.") }
            
    return PDFLibraryView(pdfData: pdfData, pdfFileName: "PDFKit Example")
}

