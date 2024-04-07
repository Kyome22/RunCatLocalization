/*
 Category.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

extension RCLCategory {
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

    func view(_ language: RCLLanguage) -> some View {
        Group {
            switch self {
            case .dashboard: DashboardView(language: language)
            case .systemInfoBar: SystemInfoBarView(language: language)
            case .runnerName: RunnerNameView(language: language)
            case .runnersStore: RunnersStoreView(language: language)
            case .selfMadeRunners: SelfMadeRunnersView(language: language)
            case .generalSettings: GeneralSettingsView(language: language)
            case .systemInfoSettings: SystemInfoSettingsView(language: language)
            case .others: OthersView(language: language)
            }
        }
    }
}
