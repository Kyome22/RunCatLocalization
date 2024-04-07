/*
 OthersView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct OthersView: View {
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
                    Text(RCL.Others.generalTab.string)
                }
                VStack {
                    Image(systemName: "cpu").imageScale(.large)
                    Text(RCL.Others.systemInfoTab.string)
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
                Text(RCL.Others.mailIssueReport.string)
                Text(RCL.Others.mailEnvironment.string)
                Text(RCL.Others.mailWhatYouTried.string)
                Text(RCL.Others.mailShortDescription.string)
                Text(RCL.Others.mailReproduceIssue.string)
                Text(RCL.Others.mailExpectedResult.string)
            }
            .padding()
            .background(Color(nsColor: NSColor.windowBackgroundColor))
        }
    }

    var about: some View {
        VStack {
            Text("about")
            VStack {
                Text(RCL.Others.support.string)
                Text(verbatim: "https://kyome.io/runcat\(RCL.Others.queryLang.string)")
            }
            .padding()
            .background(Color(nsColor: NSColor.windowBackgroundColor))
        }
    }
}

#Preview {
    OthersView()
}
