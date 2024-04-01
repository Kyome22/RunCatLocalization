/*
 RunnersStoreView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct RunnersStoreView: View {
    let language: Language

    var body: some View {
        HStack {
            VStack {
                Text(RCL.RunnersStore.runnersStoreTitle.string(lang: language.id))
                store
            }
            VStack {
                Text("alert")
                ScrollView(.vertical) {
                    alert(message: .productNotFound, suggestion: .productNotFoundSuggestion)
                    alert(message: .productUnavailable)
                    alert(message: .purchaseNotAllowed, suggestion: .purchaseNotAllowedSuggestion)
                    alert(message: .userCancelled)
                    alert(message: .pending)
                    alert(message: .failedVerification)
                    alert(message: .unknownError)
                }
            }
        }
    }

    var store: some View {
        VStack(alignment: .leading, spacing: 8) {
            restore
            ForEach(StockCategory.allCases) { category in
                Text(category.label.string(lang: language.id))
                    .font(.headline)
                    .padding(.top, 8)
                stock
            }
        }
        .frame(width: 450)
        .padding()
        .background(Color(nsColor: NSColor.windowBackgroundColor))
        .fixedSize()
    }

    var restore: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("restore")
                .renderingMode(.template)
                .frame(width: 100, height: 36)
            HStack(alignment: .center, spacing: 8) {
                Text(RCL.RunnersStore.restoreTitle.string(lang: language.id))
                    .font(.title3)
                Spacer()
                Button(action: {}, label: {
                    Text(RCL.RunnersStore.restore.string(lang: language.id))
                })
            }
        }
        .padding(8)
        .background(Color.storeItemBackground)
        .cornerRadius(8)
    }

    var stock: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("cat")
                .renderingMode(.template)
                .frame(width: 100, height: 36)
            VStack(alignment: .leading) {
                HStack(alignment: .center, spacing: 8) {
                    Text("runnerName")
                        .font(.title3)
                    Spacer()
                    Text(verbatim: "¥100")
                        .font(.body)
                    Button(action: {}, label: {
                        Text(RCL.RunnersStore.purchase.string(lang: language.id))
                    })
                }
                Text(verbatim: "description")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(8)
        .background(Color.storeItemBackground)
        .cornerRadius(8)
    }

    func alert(message: RCL.RunnersStore, suggestion: RCL.RunnersStore? = nil) -> some View {
        VStack(spacing: 8) {
            Text(RCL.RunnersStore.purchaseErrorTitle.string(lang: language.id))
                .font(.headline)
            VStack {
                Text(message.string(lang: language.id))
                Text(suggestion?.string(lang: language.id) ?? "")
            }
            .font(.caption)
            Button(action: {}, label: {
                Text(verbatim: "OK")
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
    RunnersStoreView(language: .english)
}
