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
                    Text(RCL.SystemInfoBar.showCPUUsage.string)
                }
                valueIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showMemoryPerformance.string)
                }
                valueIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showStorageCapacity.string)
                }
                storageIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showBatteryState.string)
                }
                batteryIndicatorTypePicker
            }
            Section {
                Toggle(isOn: .constant(true)) {
                    Text(RCL.SystemInfoBar.showNetworkSpeed.string)
                }
            }
        }
        .formStyle(.grouped)
        .frame(width: 360)
        .fixedSize()
    }

    private var valueIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            Text(RCL.SystemInfoBar.percentage.string).fixedSize().tag(0)
            Text(RCL.SystemInfoBar.barGraph.string).fixedSize().tag(1)
            Text(RCL.SystemInfoBar.pieChart.string).fixedSize().tag(2)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }

    private var storageIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            Text(RCL.SystemInfoBar.percentage.string).fixedSize().tag(0)
            Text(RCL.SystemInfoBar.available.string).fixedSize().tag(1)
            Text(RCL.SystemInfoBar.used.string).fixedSize().tag(2)
        } label: {
            EmptyView()
        }
        .pickerStyle(.segmented)
        .labelsHidden()
    }

    private var batteryIndicatorTypePicker: some View {
        Picker(selection: .constant(0)) {
            Text(RCL.SystemInfoBar.percentage.string).fixedSize().tag(0)
            Text(RCL.SystemInfoBar.onlyIcon.string).fixedSize().tag(1)
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
