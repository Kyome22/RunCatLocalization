/*
 View+Extension.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/04/01.
 
*/

import SwiftUI

extension View {
    func resizableLabel(text: String, image: Image) -> Label<Text, Image> {
        Label {
            Text(verbatim: text)
        } icon: {
            image.resizable()
        }
    }

    func resizableImageButton(text: String, image: Image) -> Button<Label<Text, Image>> {
        Button(action: {}, label: {
            resizableLabel(text: text, image: image)
        })
    }
}
