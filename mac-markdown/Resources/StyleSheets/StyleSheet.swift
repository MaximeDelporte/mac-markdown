import SwiftUI

enum StyleSheet: String, CaseIterable {
    case github = "GitHub"
    case lopash = "Lopash"
    case solarizeddark = "Solarized Dark"
    case ulysses = "Ulysses"
    
    var shortcutKey: KeyEquivalent {
        switch self {
        case .github:
            return "1"
        case .lopash:
            return "2"
        case .solarizeddark:
            return "3"
        case .ulysses:
            return "4"
        }
    }
}
