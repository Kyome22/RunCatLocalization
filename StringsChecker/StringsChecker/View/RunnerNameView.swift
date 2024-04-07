/*
 RunnerNameView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct RunnerNameView: View {
    let language: Language
    let categories: [RunnerCategory] = RunnerCategory.allCases

    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 8) {
                ForEach(categories) { category in
                    runnersList(category)
                }
            }
            .fixedSize()
        }
    }

    private func runnersList(_ category: RunnerCategory) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(category.label.string(lang: language.id))
                .font(.caption)
                .foregroundStyle(.secondary)
            ForEach(category.runners) { runnerType in
                runnerButton(runnerType, category != .special)
                if runnerType != category.runners.last {
                    Divider().padding(.leading, 16)
                }
            }
        }
        .padding(8)
        .materialCellStyle()
    }

    private func runnerButton(_ runnerType: RunnerType, _ isTemplate: Bool) -> some View {
        Button(action: {}, label: {
            Label {
                Text(runnerType.name?.string(lang: language.id) ?? "unknownName")
            } icon: {
                Image(runnerType.id)
                    .renderingMode(isTemplate ? .template : .original)
                    .resizable()
            }
        })
        .buttonStyle(.runner(isSelected: runnerType == .catA))
        .padding(.trailing, 8)
    }
}

#Preview {
    RunnerNameView(language: .english)
}
