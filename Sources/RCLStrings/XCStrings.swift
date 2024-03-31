import Foundation

struct RootCodingKey: CodingKey {
    var stringValue: String

    init?(stringValue: String) {
        self.stringValue = stringValue
    }

    var intValue: Int?

    init?(intValue: Int) {
        self.stringValue = "\(intValue)"
        self.intValue = intValue
    }

    static let sourceLanguage = RootCodingKey(stringValue: "sourceLanguage")!
    static let strings = RootCodingKey(stringValue: "strings")!
    static let version = RootCodingKey(stringValue: "version")!
}

struct XCStrings: Decodable {
    var category: String = ""
    var sourceLanguage: String
    var strings: [String]
    var version: String

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: RootCodingKey.self)
        self.sourceLanguage = try container.decode(String.self, forKey: .sourceLanguage)
        let stringsContainer = try container.nestedContainer(
            keyedBy: RootCodingKey.self,
            forKey: .strings
        )
        self.strings = stringsContainer.allKeys.map { $0.stringValue }.sorted()
        self.version = try container.decode(String.self, forKey: .version)
    }
}
