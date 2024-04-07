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

    var view: some View {
        Group {
            switch self {
            case .dashboard: DashboardView()
            case .systemInfoBar: SystemInfoBarView()
            case .runnerName: RunnerNameView()
            case .runnersStore: RunnersStoreView()
            case .selfMadeRunners: SelfMadeRunnersView()
            case .generalSettings: GeneralSettingsView()
            case .systemInfoSettings: SystemInfoSettingsView()
            case .others: OthersView()
            }
        }
    }
}
