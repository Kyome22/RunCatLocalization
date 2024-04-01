/*
 MediumButtonStyle.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/04/01.
 
*/

import SwiftUI

private struct MediumLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center) {
            configuration.icon
                .scaledToFit()
                .frame(width: 24, height: 24)
            configuration.title
                .font(.caption2)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
        }
    }
}

struct MediumButtonStyle: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled: Bool

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .labelStyle(MediumLabelStyle())
            .frame(width: 64, height: 56)
            .padding(4)
            .contentShape(Rectangle())
            .materialCellStyle()
            .opacity(configuration.isPressed ? 0.6 : 1.0)
            .foregroundStyle(isEnabled ? Color.primary : Color.secondary)
    }
}

extension ButtonStyle where Self == MediumButtonStyle {
    static var medium: MediumButtonStyle {
        return MediumButtonStyle()
    }
}
