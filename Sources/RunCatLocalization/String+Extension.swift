import Foundation

extension String {
    init(localized: LocalizationValue, table: String, lang: String) {
        let path = Bundle.module.path(forResource: lang, ofType: "lproj")
        self.init(localized: localized, table: table, bundle: Bundle(path: path!))
    }
}
