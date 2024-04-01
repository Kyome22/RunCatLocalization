/*
 DashboardView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct DashboardView: View {
    let language: Language

    var body: some View {
        helpMenus
    }

    var helpMenus: some View {
        VStack(alignment: .leading, spacing: 8) {
            resizableImageButton(
                text: RCL.Dashboard.helpFAQ.string(lang: language.id),
                image: Image(systemName: "questionmark")
            )
            resizableImageButton(
                text: RCL.Dashboard.helpHowToRegister.string(lang: language.id),
                image: Image(systemName: "questionmark")
            )
        }
        .buttonStyle(.small)
        .padding(8)
        .materialCellStyle()
        .padding(.horizontal, 8)
        .fixedSize()
    }

    private func resizableLabel(text: String, image: Image) -> Label<Text, Image> {
        Label {
            Text(verbatim: text)
        } icon: {
            image.resizable()
        }
    }

    private func resizableImageButton(text: String, image: Image) -> Button<Label<Text, Image>> {
        Button(action: {}, label: {
            resizableLabel(text: text, image: image)
        })
    }
}

#Preview {
    DashboardView(language: .english)
}
