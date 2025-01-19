import Foundation

public enum RCLLanguage: String, Sendable, Identifiable {
    case automatic
    case english = "en"
    case japanese = "ja"
    case korean = "ko"

    public var id: String { rawValue }

    public var bundle: Bundle? {
        if self == .automatic {
            Bundle.module
        } else if let path = Bundle.module.path(forResource: rawValue, ofType: "lproj") {
            Bundle(path: path)
        } else {
            nil
        }
    }

    public var locale: Locale {
        Locale(identifier: rawValue)
    }

    public var label: String {
        switch self {
        case .automatic: ""
        case .english: "🇺🇸 English"
        case .japanese: "🇯🇵 日本語"
        case .korean: "🇰🇷 한국어"
        }
    }

    public static let allCases: [RCLLanguage] = [
        .english,
        .japanese,
        .korean
    ]
}
