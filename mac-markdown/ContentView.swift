//
//  ContentView.swift
//  mac-markdown
//
//  Created by afx on 15/01/2024.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: MacMarkdownDocument

    var body: some View {
        HSplitView {
            TextEditor(text: $document.text)
            WebView(html: document.html)
        }
        .frame(minWidth: 400, minHeight: 300)
    }
}

#Preview {
    ContentView(document: .constant(MacMarkdownDocument()))
}
