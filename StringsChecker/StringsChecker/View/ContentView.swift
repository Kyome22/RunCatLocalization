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

    var body: some View {
        VStack {
            TabView(selection: $category) {
                ForEach(RCLCategory.allCases) { category in
                    category.view(language)
                        .tabItem {
                            Text(category.title)
                        }
                        .tag(category)
                }
            }
            .environment(\.locale, language.locale)
            HStack {
                Spacer()
                Picker(selection: $language) {
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
