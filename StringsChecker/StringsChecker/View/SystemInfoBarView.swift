/*
 SystemInfoBarView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct SystemInfoBarView: View {
    let language: RCLLanguage

    var body: some View {
        Form {
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showCPUUsage.string(language))
                }
                valueIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showMemoryPerformance.string(language))
                }
                valueIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showStorageCapacity.string(language))
                }
                storageIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showBatteryState.string(language))
                }
                batteryIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showNetworkSpeed.string(language))
                }
            }
        }
        .formStyle(.grouped)
        .frame(width: 360)
        .fixedSize()
    }

    private var valueIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            Text(RCL.SystemInfoBar.percentage.string(language)).fixedSize().tag(0)
            Text(RCL.SystemInfoBar.barGraph.string(language)).fixedSize().tag(1)
            Text(RCL.SystemInfoBar.pieChart.string(language)).fixedSize().tag(2)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }

    private var storageIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            Text(RCL.SystemInfoBar.percentage.string(language)).fixedSize().tag(0)
            Text(RCL.SystemInfoBar.available.string(language)).fixedSize().tag(1)
            Text(RCL.SystemInfoBar.used.string(language)).fixedSize().tag(2)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }

    private var batteryIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            Text(RCL.SystemInfoBar.percentage.string(language)).fixedSize().tag(0)
            Text(RCL.SystemInfoBar.onlyIcon.string(language)).fixedSize().tag(1)
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
