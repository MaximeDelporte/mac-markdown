//
//  MenuCommands.swift
//  mac-markdown
//
//  Created by afx on 17/01/2024.
//

import Foundation
import SwiftUI

struct MenuCommands: Commands {
    
    @AppStorage("styleSheet") var styleSheet: StyleSheet = .github
    
    var body: some Commands {
        CommandGroup(before: .help, addition: {
            Button("Markdown Cheatsheet") {
                showCheatSheet()
            }
            .keyboardShortcut("/", modifiers: .command)
            
            Divider()
        })
        
        CommandMenu("Stylesheet") {
            ForEach(StyleSheet.allCases, id: \.self) { style in
                Button(style.rawValue) {
                    styleSheet = style
                }
                .keyboardShortcut(style.shortcutKey, modifiers: .command)
            }
        }
    }
    
    func showCheatSheet() {
        let cheatSheetAddress = "https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet"
        guard let url = URL(string: cheatSheetAddress) else {
            return
        }
        NSWorkspace.shared.open(url)
    }
}
