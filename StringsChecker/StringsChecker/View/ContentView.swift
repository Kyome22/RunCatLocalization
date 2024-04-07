//
//  ContentView.swift
//  StringsChecker
//
//  Created by Takuto Nakamura on 2024/03/31.
//

import SwiftUI
import RunCatLocalization

struct ContentView: View {
    @State var category = RCLCategory.dashboard
    @State var language = RCLLanguage.english

    init() {
        RCL.language = language
    }

    var body: some View {
        VStack {
            TabView(selection: $category) {
                ForEach(RCLCategory.allCases) { category in
                    category.view
                        .tabItem {
                            Text(category.title)
                        }
                        .tag(category)
                        .id(language.id)
                }
            }
            .environment(\.locale, language.locale)
            HStack {
                Spacer()
                Picker(selection: Binding<RCLLanguage>(
                    get: { language },
                    set: { language in
                        RCL.language = language
                        self.language = language
                    }
                )) {
                    ForEach(RCLLanguage.allCases) { language in
                        Text(verbatim: language.label)
                            .tag(language)
                    }
                } label: {
                    EmptyView()
                }
                .labelsHidden()
                .fixedSize()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
