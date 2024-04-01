/*
 SystemInfoBarView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct SystemInfoBarView: View {
    let language: Language

    var body: some View {
        Form {
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showCPUUsage.string(lang: language.id))
                }
                valueIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showMemoryPerformance.string(lang: language.id))
                }
                valueIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showStorageCapacity.string(lang: language.id))
                }
                storageIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showBatteryState.string(lang: language.id))
                }
                batteryIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showNetworkSpeed.string(lang: language.id))
                }
            }
        }
        .formStyle(.grouped)
        .frame(width: 360)
        .fixedSize()
    }

    private var valueIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            Text(RCL.SystemInfoBar.percentage.string(lang: language.id)).fixedSize().tag(0)
            Text(RCL.SystemInfoBar.barGraph.string(lang: language.id)).fixedSize().tag(1)
            Text(RCL.SystemInfoBar.pieChart.string(lang: language.id)).fixedSize().tag(2)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }

    private var storageIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            Text(RCL.SystemInfoBar.percentage.string(lang: language.id)).fixedSize().tag(0)
            Text(RCL.SystemInfoBar.available.string(lang: language.id)).fixedSize().tag(1)
            Text(RCL.SystemInfoBar.used.string(lang: language.id)).fixedSize().tag(2)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }

    private var batteryIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            Text(RCL.SystemInfoBar.percentage.string(lang: language.id)).fixedSize().tag(0)
            Text(RCL.SystemInfoBar.onlyIcon.string(lang: language.id)).fixedSize().tag(1)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }
}

#Preview {
    SystemInfoBarView(language: .english)
}
