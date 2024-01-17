//
//  MacMarkdownApp.swift
//  mac-markdown
//
//  Created by afx on 15/01/2024.
//

import SwiftUI

@main
struct MacMarkdownApp: App {
    
    var body: some Scene {
        DocumentGroup(newDocument: MacMarkdownDocument()) { file in
            ContentView(document: file.$document)
        }
        .commands {
          MenuCommands()
        }
        
        Settings {
            SettingsView()
        }
    }
}
