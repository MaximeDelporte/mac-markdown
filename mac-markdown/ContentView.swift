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
    @State private var previewState = PreviewState.web
    
    var body: some View {
        HSplitView {
            TextEditor(text: $document.text)
                .frame(minWidth: 200)
                .font(.system(size: CGFloat(editorFontSize)))
            
            if previewState == .web {
                WebView(html: document.html)
                    .frame(minWidth: 200)
            } else if previewState == .html {
                ScrollView {
                    Text(document.html)
                        .frame(minWidth: 200)
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: .topLeading)
                        .padding()
                        .font(.system(size: CGFloat(editorFontSize)))
                        .textSelection(.enabled)
                }
            }
        }
        .frame(minWidth: 400, minHeight: 300)
        .toolbar {
            PreviewToolBarItem(previewState: $previewState)
        }
    }
}

#Preview {
    ContentView(document: .constant(MacMarkdownDocument()))
}
