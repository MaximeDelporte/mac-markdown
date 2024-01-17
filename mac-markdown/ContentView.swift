//
//  ContentView.swift
//  mac-markdown
//
//  Created by afx on 15/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var document: MacMarkdownDocument
    @AppStorage("editorFontSize") var editorFontSize: Int = 14
    
    var body: some View {
        HSplitView {
            TextEditor(text: $document.text)
                .font(.system(size: CGFloat(editorFontSize)))
            
            WebView(html: document.html)
        }
        .frame(minWidth: 400, minHeight: 300)
    }
}

#Preview {
    ContentView(document: .constant(MacMarkdownDocument()))
}
