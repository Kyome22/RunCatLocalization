/*
 OthersView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct OthersView: View {
    let language: Language

    var body: some View {
        HStack {
            settingsTab
            mail
            about
        }
    }

    var settingsTab: some View {
        VStack {
            Text("settingsTab")
            HStack {
                VStack {
                    Image(systemName: "gear").imageScale(.large)
                    Text(RCL.Others.generalTab.string(lang: language.id))
                }
                VStack {
                    Image(systemName: "cpu").imageScale(.large)
                    Text(RCL.Others.systemInfoTab.string(lang: language.id))
                }
            }
            .padding()
            .background(Color(nsColor: NSColor.windowBackgroundColor))
        }
    }

    var mail: some View {
        VStack {
            Text("mail")
            VStack(alignment: .leading) {
                Text(RCL.Others.mailIssueReport.string(lang: language.id))
                Text(RCL.Others.mailEnvironment.string(lang: language.id))
                Text(RCL.Others.mailWhatYouTried.string(lang: language.id))
                Text(RCL.Others.mailShortDescription.string(lang: language.id))
                Text(RCL.Others.mailReproduceIssue.string(lang: language.id))
                Text(RCL.Others.mailExpectedResult.string(lang: language.id))
            }
            .padding()
            .background(Color(nsColor: NSColor.windowBackgroundColor))
        }
    }

    var about: some View {
        VStack {
            Text("about")
            VStack {
                Text(RCL.Others.support.string(lang: language.id))
                Text(verbatim: "https://kyome.io/runcat\(RCL.Others.queryLang.string(lang: language.id))")
            }
            .padding()
            .background(Color(nsColor: NSColor.windowBackgroundColor))
        }
    }
}

#Preview {
    OthersView(language: .english)
}
