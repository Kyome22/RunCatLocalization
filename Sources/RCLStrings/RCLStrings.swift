import ArgumentParser
import Foundation

struct RCLStrings: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "strings",
        abstract: "A tool to parse xcstrings and output strings list.",
        version: "0.0.1"
    )

    @Option(
        name: [.customShort("r"), .customLong("resources-path")],
        help: "Path of the Resources directory"
    )
    var resourcesPath: String

    @Option(
        name: [.customShort("o"), .customLong("output-path")],
        help: "Output path of the Strings.swift"
    )
    var outputPath: String

    mutating func run() throws {
        let xcstringsURLs = try getXCStringsURLs(resourcesPath)
        let xcstringsItems = try xcstringsURLs
            .map { url in
                var xcstrings = try getXCStrings(url)
                xcstrings.category = url.deletingPathExtension().lastPathComponent
                return xcstrings
            }
            .sorted { $0.category < $1.category }
        try output(outputPath, xcstringsItems)
    }

    private func getXCStringsURLs(_ path: String) throws -> [URL] {
        let fm = FileManager.default
        let contents = try fm.contentsOfDirectory(atPath: path)
        let resourcesURL = URL(fileURLWithPath: path)
        return contents
            .map { resourcesURL.appendingPathComponent($0) }
            .filter { $0.pathExtension == "xcstrings" }
    }

    private func getXCStrings(_ url: URL) throws -> XCStrings {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(XCStrings.self, from: data)
    }

    private func output(_ path: String, _ xcstringsItems: [XCStrings]) throws {
        let outputURL = URL(fileURLWithPath: path)
            .appendingPathComponent("Strings.swift")
        var text = ""
        if xcstringsItems.isEmpty {
            throw RCLSError.empty
        } else {
            text = xcstringsItems
                .map { xcstrings -> String in
                    let keys = xcstrings.strings.sorted()
                    var text = keys
                        .map { key -> String in
                            """
                            case .\(key):
                                Text("\(key)", tableName: "\(xcstrings.category)", bundle: .module)
                            """
                        }
                        .joined(separator: "\n")

                    text = """
                    return switch self {
                    \(text)
                    }
                    """

                    text = """
                    public var id: String { rawValue }

                    public var localizedText: Text {
                    \(text.nest())
                    }
                    """

                    let caseText = keys
                        .map { "case \($0)" }
                        .joined(separator: "\n")

                    text = """
                    \(caseText)

                    \(text)
                    """

                    text = """
                    public enum \(xcstrings.category): String, Identifiable, CaseIterable {
                    \(text.nest())
                    }
                    """

                    return text
                }
                .joined(separator: "\n\n")

            text = """
                import SwiftUI

                public enum RCL {
                \(text.nest())
                }
                """
        }

        if FileManager.default.fileExists(atPath: outputURL.path) {
            try FileManager.default.removeItem(at: outputURL)
        }
        try text.data(using: .utf8)?.write(to: outputURL)
    }
}
