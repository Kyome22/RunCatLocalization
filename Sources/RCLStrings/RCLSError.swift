import Foundation

enum RCLSError: LocalizedError {
    case empty

    var errorDescription: String? {
        return switch self {
        case .empty: "Resources directory does not have any xcstrings files."
        }
    }
}
