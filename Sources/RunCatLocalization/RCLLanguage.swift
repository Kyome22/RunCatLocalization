import Foundation

public enum RCLLanguage: Sendable, Identifiable {
    case automatic
    case english
    case japanese
    case korean
    case simplifiedChinese
    case french

    public var locale: Locale {
        switch self {
        case .automatic:
            Locale.current
        case .english:
            Locale(languageCode: .english)
        case .japanese:
            Locale(languageCode: .japanese)
        case .korean:
            Locale(languageCode: .korean)
        case .simplifiedChinese:
            Locale(languageCode: .chinese, script: .hanSimplified)
        case .french:
            Locale(languageCode: .french)
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
        .japanese,
        .korean,
        .simplifiedChinese,
        .french,
    ]
}
