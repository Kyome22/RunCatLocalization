import Foundation

public enum RCLLanguage: Sendable, Identifiable {
    case automatic
    case english
    case french
    case japanese
    case korean
    case simplifiedChinese

    public var locale: Locale {
        switch self {
        case .automatic:
            Locale.current
        case .english:
            Locale(languageCode: .english)
        case .french:
            Locale(languageCode: .french)
        case .japanese:
            Locale(languageCode: .japanese)
        case .korean:
            Locale(languageCode: .korean)
        case .simplifiedChinese:
            Locale(languageCode: .chinese, script: .hanSimplified)
        }
    }

    public var bundle: Bundle? {
        if self != .automatic, let path = Bundle.module.path(forResource: locale.identifier, ofType: "lproj") {
            Bundle(path: path)
        } else {
            Bundle.module
        }
    }

    public var id: String { locale.identifier }

    public static let allCases: [RCLLanguage] = [
        .english,
        .french,
        .japanese,
        .korean,
        .simplifiedChinese,
    ]
}
