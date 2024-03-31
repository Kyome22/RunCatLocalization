//
//  StringsCheckerApp.swift
//  StringsChecker
//
//  Created by Takuto Nakamura on 2024/03/31.
//

import AppKit
import SwiftUI

@main
struct StringsCheckerApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

final class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
