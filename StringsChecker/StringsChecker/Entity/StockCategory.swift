/*
 StockCategory.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/04/01.
 
*/

import Foundation
import RunCatLocalization

enum StockCategory: Int, Identifiable, CaseIterable {
    case recommended
    case special
    case animal
    case inanimate
    case seasonal

    var id: Int { rawValue }

    var label: RCL.RunnersStore {
        return switch self {
        case .recommended: .categoryRecommended
        case .special: .categorySpecial
        case .animal: .categoryAnimal
        case .inanimate: .categoryInanimate
        case .seasonal: .categorySeasonal
        }
    }

    var needsDescription: Bool {
        return switch self {
        case .special, .recommended:
            true
        default:
            false
        }
    }
}
