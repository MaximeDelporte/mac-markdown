//
//  mac_markdownApp.swift
//  mac-markdown
//
//  Created by afx on 15/01/2024.
//

import SwiftUI

@main
struct mac_markdownApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: mac_markdownDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
