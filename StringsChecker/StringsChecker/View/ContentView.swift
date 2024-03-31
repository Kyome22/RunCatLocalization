//
//  ContentView.swift
//  StringsChecker
//
//  Created by Takuto Nakamura on 2024/03/31.
//

import SwiftUI
import RunCatLocalization

struct ContentView: View {
    @State var category = Category.dashboard
    @State var language = Language.english

    var body: some View {
        VStack {
            TabView(selection: $category) {
                ForEach(Category.allCases) { category in
                    category.view
                        .tabItem {
                            Text(category.title)
                        }
                        .tag(category)
                }
            }
            HStack {
                Spacer()
                Picker(selection: $language) {
                    ForEach(Language.allCases) { language in
                        Text(verbatim: language.title)
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
        .environment(\.locale, language.locale)
    }
}

#Preview {
    ContentView()
}
