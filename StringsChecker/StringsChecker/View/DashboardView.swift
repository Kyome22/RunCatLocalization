/*
 DashboardView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct DashboardView: View {
    var language: RCLLanguage

    var body: some View {
        HStack {
            mainMenus
            subContext {
                subMenus
            }
            subContext {
                helpMenus
            }
        }
    }

    var mainMenus: some View {
        VStack(spacing: 8) {
            resizableImageButton(
                text: RCL.Dashboard.runners.string(language),
                image: Image(systemName: "pawprint")
            )
            resizableImageButton(
                text: RCL.Dashboard.store.string(language),
                image: Image(systemName: "cart")
            )
            resizableImageButton(
                text: RCL.Dashboard.selfMade.string(language),
                image: Image(.selfMade)
            )
            resizableImageButton(
                text: RCL.Dashboard.activityMonitor.string(language),
                image: Image(systemName: "waveform.path.ecg")
            )
            resizableImageButton(
                text: RCL.Dashboard.settings.string(language),
                image: Image(systemName: "gear")
            )
            resizableImageButton(
                text: RCL.Dashboard.more.string(language),
                image: Image(systemName: "ellipsis")
            )
        }
        .buttonStyle(.medium)
        .padding(8)
        .background(Color(nsColor: NSColor.windowBackgroundColor))
        .fixedSize()
    }

    var subMenus: some View {
        VStack(alignment: .leading, spacing: 8) {
            resizableImageButton(
                text: RCL.Dashboard.aboutApp.string(language),
                image: Image(systemName: "info")
            )
            resizableImageButton(
                text: RCL.Dashboard.help.string(language),
                image: Image(systemName: "lightbulb")
            )
            resizableImageButton(
                text: RCL.Dashboard.reportAnIssue.string(language),
                image: Image(systemName: "envelope")
            )
            resizableImageButton(
                text: RCL.Dashboard.terminateApp.string(language),
                image: Image(systemName: "hand.wave")
            )
            resizableImageButton(
                text: RCL.Dashboard.debugSleep.string(language),
                image: Image(systemName: "powersleep")
            )
            resizableImageButton(
                text: RCL.Dashboard.debugWakeUp.string(language),
                image: Image(systemName: "wake")
            )
        }
        .buttonStyle(.small)
        .padding(8)
        .materialCellStyle()
        .padding(.horizontal, 8)
        .fixedSize()
    }

    var helpMenus: some View {
        VStack(alignment: .leading, spacing: 8) {
            resizableImageButton(
                text: RCL.Dashboard.helpFAQ.string(language),
                image: Image(systemName: "questionmark.bubble")
            )
            resizableImageButton(
                text: RCL.Dashboard.helpHowToRegister.string(language),
                image: Image(.helpSelfMade)
            )
        }
        .buttonStyle(.small)
        .padding(8)
        .materialCellStyle()
        .padding(.horizontal, 8)
        .fixedSize()
    }

    private func subContext<Content: View>(@ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Button(action: {}, label: {
                Label {
                    Text(RCL.Dashboard.back.string(language))
                } icon: {
                    Image(systemName: "chevron.backward")
                }
            })
            .buttonStyle(.borderless)
            .padding(.horizontal, 8)
            content()
        }
        .padding(.vertical, 8)
        .background(Color(nsColor: NSColor.windowBackgroundColor))
    }
}

#Preview {
    DashboardView(language: .english)
}
