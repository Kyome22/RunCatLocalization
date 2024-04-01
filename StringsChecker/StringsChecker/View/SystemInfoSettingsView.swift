/*
 SystemInfoSettingsView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct SystemInfoSettingsView: View {
    let language: Language

    var body: some View {
        HStack {
            Form {
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.memoryPerformance.string(lang: language.id))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.storageCapacity.string(lang: language.id))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.batteryState.string(lang: language.id))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.networkConnection.string(lang: language.id))
                    }
                } header: {
                    Text(RCL.SystemInfoSettings.monitoring.string(lang: language.id))
                }
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.SystemInfoSettings.systemInfoBar.string(lang: language.id))
                    }
                } header: {
                    Text(RCL.SystemInfoSettings.experimentalFeature.string(lang: language.id))
                }
            }
            .formStyle(.grouped)
            .fixedSize()

            VStack(spacing: 8) {
                Text(RCL.SystemInfoSettings.activateSystemInfoBarTitle.string(lang: language.id))
                    .font(.headline)
                Text(RCL.SystemInfoSettings.activateSystemInfoBarMessage.string(lang: language.id))
                    .font(.caption)
                Button(action: {}, label: {
                    Text(RCL.SystemInfoSettings.changedMyMind.string(lang: language.id))
                        .frame(width: 160)
                })
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                Button(role: .cancel, action: {}, label: {
                    Text(RCL.SystemInfoSettings.activate.string(lang: language.id))
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
}

#Preview {
    SystemInfoSettingsView(language: .english)
}
