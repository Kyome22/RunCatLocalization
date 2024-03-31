/*
 Language.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import Foundation

enum Language: String, Identifiable, CaseIterable {
    case english = "en"
    case japanese = "ja"

    var id: String { rawValue }

    var locale: Locale {
        Locale(identifier: rawValue)
    }

    var title: String {
        return switch self {
        case .english: "🇺🇸 English"
        case .japanese: "🇯🇵 日本語"
        }
    }
}
