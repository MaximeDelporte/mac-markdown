//
//  WebView.swift
//  mac-markdown
//
//  Created by afx on 17/01/2024.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    
    @AppStorage("styleSheet") var styleSheet: StyleSheet = .github
    
    var html: String
    
    var formattedHtml: String {
        return """
            <html>
            <head>
                <link href="\(styleSheet).css" rel="stylesheet">
            </head>
            <body>
                \(html)
            </body>
            </html>
        """
    }
    
    func makeNSView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        nsView.loadHTMLString(formattedHtml, baseURL: Bundle.main.resourceURL)
    }
}
