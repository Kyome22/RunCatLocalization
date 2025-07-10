import Foundation

public enum RCLLanguage: String, Sendable, Identifiable {
    case automatic
    case english = "en"
    case japanese = "ja"
    case korean = "ko"
    case simplifiedChinese = "zh-Hans"

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

    public static let allCases: [RCLLanguage] = [
        .english,
        .japanese,
        .korean,
        .simplifiedChinese,
    ]
}
