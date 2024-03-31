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

    var view: some View {
        Group {
            switch self {
            case .dashboard: DashboardView()
            case .systemInfoBar: SystemInfoBarView()
            case .runnerName: RunnerNameView()
            case .runnersStore: RunnersStoreView()
            case .selfMadeRunners: SelfMadeRunnersView()
            case .generalSettings:GeneralSettingsView()
            case .systemInfoSettings: SystemInfoSettingsView()
            case .others: OthersView()
            }
        }
    }
}
