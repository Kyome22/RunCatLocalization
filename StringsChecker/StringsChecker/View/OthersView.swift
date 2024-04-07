/*
 OthersView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct OthersView: View {
    var language: RCLLanguage

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
                    Text(RCL.Others.generalTab.string(language))
                }
                VStack {
                    Image(systemName: "cpu").imageScale(.large)
                    Text(RCL.Others.systemInfoTab.string(language))
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
                Text(RCL.Others.mailIssueReport.string(language))
                Text(RCL.Others.mailEnvironment.string(language))
                Text(RCL.Others.mailWhatYouTried.string(language))
                Text(RCL.Others.mailShortDescription.string(language))
                Text(RCL.Others.mailReproduceIssue.string(language))
                Text(RCL.Others.mailExpectedResult.string(language))
            }
            .padding()
            .background(Color(nsColor: NSColor.windowBackgroundColor))
        }
    }

    var about: some View {
        VStack {
            Text("about")
            VStack {
                Text(RCL.Others.support.string(language))
                Text(verbatim: "https://kyome.io/runcat\(RCL.Others.queryLang.string(language))")
            }
            .padding()
            .background(Color(nsColor: NSColor.windowBackgroundColor))
        }
    }
}

#Preview {
    OthersView(language: .english)
}
