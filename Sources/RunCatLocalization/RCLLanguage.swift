import Foundation

public enum RCLLanguage: Sendable, Identifiable {
    case automatic
    case chineseSimplified
    case english
    case french
    case japanese
    case korean
    case german

    public var locale: Locale {
        switch self {
        case .automatic:
            Locale.current
        case .chineseSimplified:
            Locale(languageCode: .chinese, script: .hanSimplified)
        case .english:
            Locale(languageCode: .english)
        case .french:
            Locale(languageCode: .french)
        case .japanese:
            Locale(languageCode: .japanese)
        case .korean:
            Locale(languageCode: .korean)
        case .german:
            Locale(languageCode: .german)
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
        .chineseSimplified,
        .english,
        .french,
        .japanese,
        .korean,
        .german,
    ]
}
