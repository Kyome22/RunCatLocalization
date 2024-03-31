/*
 SystemInfoBarView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct SystemInfoBarView: View {
    var body: some View {
        Form {
            Section {
                Toggle(isOn: .constant(true)) {
                    RCL.SystemInfoBar.showCPUUsage.localizedText
                }
                valueIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    RCL.SystemInfoBar.showMemoryPerformance.localizedText
                }
                valueIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    RCL.SystemInfoBar.showStorageCapacity.localizedText
                }
                storageIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    RCL.SystemInfoBar.showBatteryState.localizedText
                }
                batteryIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    RCL.SystemInfoBar.showNetworkSpeed.localizedText
                }
            }
        }
        .formStyle(.grouped)
        .frame(width: 360)
        .fixedSize()
    }

    private var valueIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            RCL.SystemInfoBar.percentage.localizedText.fixedSize().tag(0)
            RCL.SystemInfoBar.barGraph.localizedText.fixedSize().tag(1)
            RCL.SystemInfoBar.pieChart.localizedText.fixedSize().tag(2)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }

    private var storageIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            RCL.SystemInfoBar.percentage.localizedText.fixedSize().tag(0)
            RCL.SystemInfoBar.available.localizedText.fixedSize().tag(1)
            RCL.SystemInfoBar.used.localizedText.fixedSize().tag(2)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }

    private var batteryIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            RCL.SystemInfoBar.percentage.localizedText.fixedSize().tag(0)
            RCL.SystemInfoBar.onlyIcon.localizedText.fixedSize().tag(1)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }
}

#Preview {
    SystemInfoBarView()
}
