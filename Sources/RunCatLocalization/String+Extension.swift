import Foundation

extension String {
    init(localized: LocalizationValue, table: String) {
        if let language = RCL.language {
            let path = Bundle.module.path(forResource: language.rawValue, ofType: "lproj")
            self.init(localized: localized, table: table, bundle: Bundle(path: path!))
        } else {
            self.init(localized: localized, table: table, bundle: .module)
        }
    }
}
