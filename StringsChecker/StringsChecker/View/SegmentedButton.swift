/*
 SegmentedButton.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/04/01.
 
*/

import SwiftUI

struct SegmentedButton: View {
    let imageName: String

    var body: some View {
        Button(action: {}, label: {
            Image(systemName: imageName)
                .font(.body)
                .frame(width: 16, height: 16)
                .contentShape(Rectangle())
        })
        .buttonStyle(.plain)
        .padding(4)
    }
}

#Preview {
    SegmentedButton(imageName: "")
}
