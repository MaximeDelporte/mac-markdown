//
//  SettingsView.swift
//  mac-markdown
//
//  Created by afx on 17/01/2024.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    
    @AppStorage("editorFontSize") var editorFontSize: Int = 14
    
    private let cornerRadius = 8
    
    var body: some View {
        HStack(spacing: 24) {
            Stepper(value: $editorFontSize, in: 10...30) {
                Text("Font size: \(editorFontSize)")
            }
            .frame(minWidth: 100)
            
            Button(
                action: {
                    editorFontSize = 14
                },
                label: {
                    Text("Default")
                        .padding(6)
                        .background(.blue)
                        .foregroundStyle(.white)
                }
            )
            .clipShape (
                RoundedRectangle(cornerSize: CGSize(width: cornerRadius, height: cornerRadius))
            )
            .buttonStyle(.plain)
        }
        .padding(24)
       
    }
}

#Preview {
    SettingsView(editorFontSize: 14)
}
