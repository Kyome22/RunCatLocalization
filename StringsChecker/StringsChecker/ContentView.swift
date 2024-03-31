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

    var body: some View {
        TabView(selection: $category) {
            ForEach(Category.allCases) { category in
                Text(category.title)
                    .tabItem {
                        Text(category.title)
                    }
                    .tag(category)
            }
        }
    }
}

#Preview {
    ContentView()
}
