//
//  ContentView.swift
//  mac-markdown
//
//  Created by afx on 15/01/2024.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: mac_markdownDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(mac_markdownDocument()))
}
