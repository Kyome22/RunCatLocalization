/*
 SystemInfoSettingsView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct SystemInfoSettingsView: View {
    let language: RCLLanguage

    var body: some View {
        HStack {
            Form {
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.memoryPerformance.string(language))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.storageCapacity.string(language))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.batteryState.string(language))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.networkConnection.string(language))
                    }
                } header: {
                    Text(RCL.SystemInfoSettings.monitoring.string(language))
                }
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.systemInfoBar.string(language))
                    }
                } header: {
                    Text(RCL.SystemInfoSettings.experimentalFeature.string(language))
                }
            }
            .formStyle(.grouped)
            .fixedSize()

            VStack {
                Text("alert")
                alert
            }
        }
    }

    var alert: some View {
        VStack(spacing: 8) {
            Text(RCL.SystemInfoSettings.activateSystemInfoBarTitle.string(language))
                .font(.headline)
            Text(RCL.SystemInfoSettings.activateSystemInfoBarMessage.string(language))
                .font(.caption)
            Button(action: {}, label: {
                Text(RCL.SystemInfoSettings.changedMyMind.string(language))
                    .frame(width: 160)
            })
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            Button(role: .cancel, action: {}, label: {
                Text(RCL.SystemInfoSettings.activate.string(language))
                    .frame(width: 160)
            })
            .buttonStyle(.bordered)
            .controlSize(.large)
        }
        .multilineTextAlignment(.center)
        .frame(width: 200)
        .padding()
        .background(Color(nsColor: NSColor.windowBackgroundColor))
    }
}

#Preview {
    SystemInfoSettingsView(language: .english)
}
