import Foundation

public enum RCLLanguage: String, Identifiable, CaseIterable {
    case english = "en"
    case japanese = "ja"
    case korean = "ko"

    public var id: String { rawValue }

    public var locale: Locale {
        Locale(identifier: rawValue)
    }

    public var label: String {
        return switch self {
        case .english: "🇺🇸 English"
        case .japanese: "🇯🇵 日本語"
        case .korean: "🇰🇷 한국어"
        }
    }
}
