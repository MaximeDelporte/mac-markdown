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
    
    var html: String
    
    func makeNSView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        nsView.loadHTMLString(html, baseURL: Bundle.main.resourceURL)
    }
}
