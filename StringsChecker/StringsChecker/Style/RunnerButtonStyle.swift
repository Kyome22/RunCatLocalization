/*
 RunnerButtonStyle.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/04/01.
 
*/

import SwiftUI

private struct RunnerLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: 8) {
            configuration.title
                .font(.body)
                .fixedSize(horizontal: true, vertical: false)
            Spacer(minLength: 0)
            configuration.icon
                .scaledToFit()
                .frame(height: 18)
        }
    }
}

struct RunnerButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled: Bool
    let isSelected: Bool

    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: 8) {
            Image(systemName: "circlebadge.fill")
                .foregroundStyle(isSelected ? Color.accentColor : Color.clear)
            configuration.label
                .labelStyle(RunnerLabelStyle())
                .frame(height: 24)
                .contentShape(Rectangle())
                .opacity(configuration.isPressed ? 0.6 : 1.0)
        }
        .foregroundStyle(isEnabled ? Color.primary : Color.secondary)
    }
}

extension ButtonStyle where Self == RunnerButtonStyle {
    static func runner(isSelected: Bool) -> RunnerButtonStyle {
        return RunnerButtonStyle(isSelected: isSelected)
    }
}
