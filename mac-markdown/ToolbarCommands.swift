//
//  ToolbarCommands.swift
//  mac-markdown
//
//  Created by afx on 17/01/2024.
//

import Foundation
import SwiftUI

enum PreviewState {
    case hidden
    case html
    case web
}

struct PreviewToolBarItem: ToolbarContent {
    
    @Binding var previewState: PreviewState
    
    var body: some ToolbarContent {
        ToolbarItem {
            Picker("", selection: $previewState) {
                Image(systemName: "eye.slash")
                    .tag(PreviewState.hidden)
                Image(systemName: "doc.plaintext")
                    .tag(PreviewState.html)
                Image(systemName: "doc.richtext")
                    .tag(PreviewState.web)
            }
            .pickerStyle(.segmented)
            .help("Hide preview, show HTML or web view")
        }
    }
}
