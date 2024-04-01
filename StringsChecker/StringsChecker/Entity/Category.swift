/*
 Category.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
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

    var title: LocalizedStringKey {
        return switch self {
        case .dashboard: LocalizedStringKey("dashboard")
        case .systemInfoBar: LocalizedStringKey("systemInfoBar")
        case .runnerName: LocalizedStringKey("runnerName")
        case .runnersStore: LocalizedStringKey("runnersStore")
        case .selfMadeRunners: LocalizedStringKey("selfMadeRunners")
        case .generalSettings: LocalizedStringKey("generalSettings")
        case .systemInfoSettings: LocalizedStringKey("systemInfoSettings")
        case .others: LocalizedStringKey("others")
        }
    }

    func view(language: Language) -> some View {
        Group {
            switch self {
            case .dashboard: DashboardView(language: language)
            case .systemInfoBar: SystemInfoBarView(language: language)
            case .runnerName: RunnerNameView(language: language)
            case .runnersStore: RunnersStoreView()
            case .selfMadeRunners: SelfMadeRunnersView()
            case .generalSettings: GeneralSettingsView(language: language)
            case .systemInfoSettings: SystemInfoSettingsView(language: language)
            case .others: OthersView(language: language)
            }
        }
    }
}
