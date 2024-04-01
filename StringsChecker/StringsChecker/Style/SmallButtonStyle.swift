/*
 SmallButtonStyle.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/04/01.
 
*/

import SwiftUI

private struct SmallLabelStyle: LabelStyle {
    @Environment(\.colorScheme) var colorScheme

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: 8) {
            configuration.icon
                .scaledToFit()
                .frame(width: 16, height: 16)
                .padding(6)
                .background(backColor)
                .clipShape(Circle())
            configuration.title
                .font(.body)
                .fixedSize(horizontal: true, vertical: false)
            Spacer(minLength: 0)
        }
    }

    private var backColor: Color {
        if colorScheme == .dark {
            return Color(white: 0.9, opacity: 0.2)
        } else {
            return Color(white: 0.5, opacity: 0.4)
        }
    }
}

struct SmallButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .labelStyle(SmallLabelStyle())
            .frame(height: 32)
            .contentShape(Rectangle())
            .opacity(configuration.isPressed ? 0.6 : 1.0)
    }
}

extension ButtonStyle where Self == SmallButtonStyle {
    static var small: SmallButtonStyle {
        return SmallButtonStyle()
    }
}
