//
//  PDFKit.swift
//  PDFKit Library
//
//  Created by Ahmet Bostanci on 1.07.2025.
//

import PDFKit
import SwiftUI

struct PDFKitView: UIViewRepresentable {
    @Binding var document: PDFDocument
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = document
        pdfView.autoScales = true
        pdfView.isUserInteractionEnabled = true
        pdfView.pageBreakMargins = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        return pdfView
    }
    func updateUIView(_ uiView: PDFView, context: Context) {
        if uiView.document != document {
            uiView.document = document
        }
    }
}
