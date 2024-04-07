/*
 GeneralSettingsView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct GeneralSettingsView: View {
    let language: RCLLanguage

    var body: some View {
        HStack {
            Form {
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.invertSpeed.string(language))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.flipHorizontally.string(language))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.useAccentColor.string(language))
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        Toggle(isOn: .constant(true)) {
                            Text(RCL.GeneralSettings.selectAutomatically.string(language))
                        }
                        Form {
                            Picker(selection: .constant(0)) {
                                Text(RCL.GeneralSettings.allRunners.string(language))
                                    .fixedSize().tag(0)
                                Text(RCL.GeneralSettings.onlyMonochromeRunners.string(language))
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
                        Text(RCL.GeneralSettings.stopRunner.string(language))
                    }
                } header: {
                    Text(RCL.GeneralSettings.runner.string(language))
                }
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.launchAtLogin.string(language))
                    }
                } header: {
                    Text(RCL.GeneralSettings.launch.string(language))
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
            Text(RCL.GeneralSettings.stopRunnerTitle.string(language))
                .font(.headline)
            Text(RCL.GeneralSettings.stopRunnerMessage.string(language))
                .font(.caption)
            Button(action: {}, label: {
                Text(RCL.GeneralSettings.changedMyMind.string(language))
                    .frame(width: 160)
            })
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            Button(role: .cancel, action: {}, label: {
                Text(RCL.GeneralSettings.stop.string(language))
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
    GeneralSettingsView(language: .english)
}
