/*
 GeneralSettingsView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct GeneralSettingsView: View {
    let language: Language

    var body: some View {
        HStack {
            Form {
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.invertSpeed.string(lang: language.id))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.flipHorizontally.string(lang: language.id))
                    }
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.useAccentColor.string(lang: language.id))
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        Toggle(isOn: .constant(true)) {
                            Text(RCL.GeneralSettings.selectAutomatically.string(lang: language.id))
                        }
                        Form {
                            Picker(selection: .constant(0)) {
                                Text(RCL.GeneralSettings.allRunners.string(lang: language.id))
                                    .fixedSize().tag(0)
                                Text(RCL.GeneralSettings.onlyMonochromeRunners.string(lang: language.id))
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
                        Text(RCL.GeneralSettings.stopRunner.string(lang: language.id))
                    }
                } header: {
                    Text(RCL.GeneralSettings.runner.string(lang: language.id))
                }
                Section {
                    Toggle(isOn: .constant(true)) {
                        Text(RCL.GeneralSettings.launchAtLogin.string(lang: language.id))
                    }
                } header: {
                    Text(RCL.GeneralSettings.launch.string(lang: language.id))
                }
            }
            .formStyle(.grouped)
            .fixedSize()

            VStack {
                Text(RCL.GeneralSettings.stopRunnerTitle.string(lang: language.id))
                    .font(.headline)
                Text(RCL.GeneralSettings.stopRunnerMessage.string(lang: language.id))
                    .font(.caption)
                Button(action: {}, label: {
                    Text(RCL.GeneralSettings.changedMyMind.string(lang: language.id))
                        .frame(width: 160)
                })
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                Button(role: .cancel, action: {}, label: {
                    Text(RCL.GeneralSettings.stop.string(lang: language.id))
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
    GeneralSettingsView(language: .english)
}
