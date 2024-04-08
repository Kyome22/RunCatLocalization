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
                Text(RCL.Others.mailEnvironment.string(language, "RunCat", "1.0.0", "13.0"))
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
                Text(RCL.Others.localization.string(language))
                    .foregroundStyle(Color.secondary)
                Text(RCL.Others.translators.string(language))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 8)
                Text(RCL.Others.support.string(language))
                Text(verbatim: RCL.Others.queryLang.string(language, "https://kyome.io/runcat"))
            }
            .padding()
            .background(Color(nsColor: NSColor.windowBackgroundColor))
        }
    }
}

#Preview {
    OthersView(language: .english)
}
