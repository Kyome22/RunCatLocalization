import Foundation
import PackagePlugin

@main
struct RCLStringsPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        let executableURL = try context.tool(named: "rcl-strings").url
        let resourcesURL = context.package.directoryURL
            .appending(path: "Sources")
            .appending(path: "RunCatLocalization")
            .appending(path: "Resources")
        let outputFileURL = context.pluginWorkDirectoryURL.appending(path: "RCL.swift")
        return [
            .buildCommand(
                displayName: "Run strings",
                executable: executableURL,
                arguments: [
                    "--resources-path",
                    resourcesURL.absoluteURL.path(),
                    "--output-path",
                    outputFileURL.absoluteURL.path()
                ],
                outputFiles: [
                    outputFileURL
                ]
            )
        ]
    }
}
