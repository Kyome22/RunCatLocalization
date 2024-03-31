/*
 Category.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import RunCatLocalization

enum Category: String, Identifiable, CaseIterable {
    case dashboard
    case systemInfoBar
    case runnerName
    case runnersStore
    case selfMadeRunners
    case generalSettings
    case systemInfoSettings
    case others

    var id: String { rawValue }

    var title: String {
        return switch self {
        case .dashboard: String(localized: "dashboard")
        case .systemInfoBar: String(localized: "systemInfoBar")
        case .runnerName: String(localized: "runnerName")
        case .runnersStore: String(localized: "runnersStore")
        case .selfMadeRunners: String(localized: "selfMadeRunners")
        case .generalSettings: String(localized: "generalSettings")
        case .systemInfoSettings: String(localized: "systemInfoSettings")
        case .others: String(localized: "others")
        }
    }

    var strings: [any RCLStrings] {
        return switch self {
        case .dashboard: RCL.Dashboard.allCases
        case .systemInfoBar: RCL.SystemInfoBar.allCases
        case .runnerName: RCL.RunnerName.allCases
        case .runnersStore: RCL.RunnersStore.allCases
        case .selfMadeRunners: RCL.SelfMadeRunners.allCases
        case .generalSettings: RCL.GeneralSettings.allCases
        case .systemInfoSettings: RCL.SystemInfoSettings.allCases
        case .others: RCL.Others.allCases
        }
    }
}
