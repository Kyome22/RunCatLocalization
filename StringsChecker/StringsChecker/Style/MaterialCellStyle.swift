/*
 MaterialCellStyle.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/04/01.
 
*/

import SwiftUI

private struct MaterialCellViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 0.5)
            }
            .shadow(radius: 4, y: 4)
    }
}

extension View {
    func materialCellStyle() -> some View {
        modifier(MaterialCellViewModifier())
    }
}
