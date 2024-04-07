/*
 GeneralSettingsView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct GeneralSettingsView: View {
    var body: some View {
        HStack {
            Form {
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.invertSpeed.string)
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.flipHorizontally.string)
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.useAccentColor.string)
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        Toggle(isOn: .constant(true)) {
                            Text(RCL.GeneralSettings.selectAutomatically.string)
                        }
                        Form {
                            Picker(selection: .constant(0)) {
                                Text(RCL.GeneralSettings.allRunners.string)
                                    .fixedSize().tag(0)
                                Text(RCL.GeneralSettings.onlyMonochromeRunners.string)
                                    .fixedSize().tag(1)
                            } label: {
                                EmptyView()
                            }
                            .pickerStyle(.radioGroup)
                            .labelsHidden()
                        }
                        .formStyle(.columns)
                    }
                    Toggle(isOn: .constant(false)) {
                        Text(RCL.GeneralSettings.stopRunner.string)
                    }
                } header: {
                    Text(RCL.GeneralSettings.runner.string)
                }
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.launchAtLogin.string)
                    }
                } header: {
                    Text(RCL.GeneralSettings.launch.string)
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
        VStack {
            Text(RCL.GeneralSettings.stopRunnerTitle.string)
                .font(.headline)
            Text(RCL.GeneralSettings.stopRunnerMessage.string)
                .font(.caption)
            Button(action: {}, label: {
                Text(RCL.GeneralSettings.changedMyMind.string)
                    .frame(width: 160)
            })
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            Button(role: .cancel, action: {}, label: {
                Text(RCL.GeneralSettings.stop.string)
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
    GeneralSettingsView()
}
