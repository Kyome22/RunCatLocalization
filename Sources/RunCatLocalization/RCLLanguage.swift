import Foundation

public enum RCLLanguage: String, Identifiable {
    case automatic
    case english = "en"
    case japanese = "ja"
    case korean = "ko"

    public var id: String { rawValue }

    public var bundle: Bundle? {
        if self == .automatic {
            return Bundle.module
        } else {
            guard let path = Bundle.module.path(forResource: rawValue, ofType: "lproj") else {
                return nil
            }
            return Bundle(path: path)
        }
    }

    public var locale: Locale {
        Locale(identifier: rawValue)
    }

    public var label: String {
        return switch self {
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
